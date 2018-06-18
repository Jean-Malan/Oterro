class Contact < ActiveRecord::Base
    has_many :sales 
    has_many :purchases
    has_many :transactions
end
