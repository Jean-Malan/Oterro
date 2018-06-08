class PaymentEntry < ActiveRecord::Base

    has_many :transactions, dependent: :destroy

    accepts_nested_attributes_for :transactions,
                                  allow_destroy: true
  
end
