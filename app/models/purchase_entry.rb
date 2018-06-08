class PurchaseEntry < ActiveRecord::Base
    validate :define_total_price
    
    belongs_to :gl_account
       belongs_to :bank_account
       belongs_to :purchase
       
       
       
       def define_total_price
  # Use find_all instead of where since you might be dealing with unpersisted records
        self.total_price = 0
         self.total_price +=  self.quantity.to_f * self.price.to_f
  end
    
end

