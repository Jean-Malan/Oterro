class Purchase < ActiveRecord::Base
  before_save :journal_params
  
    has_many :purchase_entries
    belongs_to :contact
    belongs_to :account_id
    belongs_to :gl_accounts
    has_many :transactions
   
    
      accepts_nested_attributes_for :purchase_entries,
                                  allow_destroy: true
    
    enum purchases_type: {
    invoice:       0,
    draft:         1,
 
  }
  
  
  def journal_params
  # Use find_all instead of where since you might be dealing with unpersisted records
  self.amount  = purchase_entries
                  .find_all(&:price?)
                  .sum { |journal_entry| journal_entry.total_price }
 
  
  end
  
    
end
