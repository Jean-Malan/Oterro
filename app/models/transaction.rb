class Transaction < ActiveRecord::Base
    before_save :format_values
    
    belongs_to :gl_account
    belongs_to :payment_entry
    belongs_to :receipt_entry
    
    enum transaction_type: {
    payment:          0,
    receipt:          1
  }


     private

  def format_values
     if self.payment_entry_id != nil
      self.amount *= -1
    
  end
end
   
end
