class Transaction < ActiveRecord::Base
    before_save :format_values, :format_vat, :format_rounding
    after_save :update_sales, :update_purchases
    
    belongs_to :gl_account
    belongs_to :payment_entry
    belongs_to :receipt_entry
    belongs_to :purchase
    belongs_to :sale
    belongs_to :contact
    
    
    enum transaction_type: {
    payment:          0,
    receipt:          1
  }
  
   enum vat_type: {
    standard_rate_purchases_15:                     0,
    standard_rate_sales_15:                         1,
    standard_rate_sales_capital_goods_15:           2,
    zero_rated_sales_excluding_goods_exported:      3,
    zero_rated_only_exported_goods:                 4
  }


  private
  
  
def update_sales
  if sale.present?
  sale.update_balance
 end
end

def update_purchases
  if purchase.present?
  purchase.update_balance
  end
end
   

  def format_values
     if self.payment_entry_id != nil
      self.total_amount *= -1
     end
  end
  
  def format_vat
     if self.vat_type ==  "standard_rate_purchases_15" || self.vat_type ==  "standard_rate_sales_15" || self.vat_type ==  "standard_rate_sales_capital_goods_15"
      self.vat_amount = ( self.total_amount * 0.15) / (1 + 0.15)
      self.amount = self.total_amount / (1.15)
     else if self.vat_type == "zero_rated_sales_excluding_goods_exported" || self.vat_type == "zero_rated_only_exported_goods"
      self.total_amount = self.total_amount * 1
     else
      self.vat = 0
     end
     end
  end
  
  def format_rounding
   if self.vat_amount != nil
      self.vat_amount = self.vat_amount.round(2)
            self.amount = self.amount.round(2)
     end

      self.total_amount = self.total_amount.round(2)
  end

   
end
