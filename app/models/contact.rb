class Contact < ActiveRecord::Base
    has_many :sales 
    has_many :purchases 
end
