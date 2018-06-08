class Sale < ActiveRecord::Base
    has_many :sales_entries
    belongs_to :contact
    belongs_to :gl_account
    belongs_to :bank_account
    
       accepts_nested_attributes_for :sales_entries,
                                  allow_destroy: true
    
    
    
    enum sales_type: {
    invoice:       0,
    draft:         1,
    estimate:      2,
 
  }
  
 
end
