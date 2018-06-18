class Product < ActiveRecord::Base
    belongs_to :sale
    belongs_to :purchase
    has_many :sales_entries
    belongs_to :purchase_entry
 
end
