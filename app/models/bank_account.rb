class BankAccount < ActiveRecord::Base
 
   has_many :transactions
   has_many :payment_entries
   has_many :sales_entries
   
   accepts_nested_attributes_for :transactions
   
   
    
 
end
