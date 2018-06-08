class Purchase < ActiveRecord::Base
    has_many :purchase_entries
    belongs_to :contact
    belongs_to :account_id
    belongs_to :gl_accounts
   
    
      accepts_nested_attributes_for :purchase_entries,
                                  allow_destroy: true
    
    enum purchases_type: {
    invoice:       0,
    draft:         1,
 
  }
    
end
