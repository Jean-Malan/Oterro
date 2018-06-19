class Purchase < ActiveRecord::Base
  before_save :journal_params
  
    has_many :purchase_entries
    belongs_to :contact
    belongs_to :account_id
    belongs_to :gl_accounts
    has_many :transactions
    belongs_to :gl_account
    
    accepts_nested_attributes_for :purchase_entries,
                                  allow_destroy: true
    
    enum purchases_type: {
    invoice:       0,
    draft:         1,
 
  }
  
  def update_balance
    update(balance: transactions.sum(:total_price))
  end

  def journal_params
      self.amount  = purchase_entries
                      .find_all(&:price?)
                      .sum { |journal_entry| journal_entry.price * journal_entry.quantity  }
                      
     self.vat_amount = purchase_entries
                      .find_all(&:vat_amount?)
                      .sum { |journal_entry| journal_entry.vat_amount * journal_entry.quantity }
  end
  
end
