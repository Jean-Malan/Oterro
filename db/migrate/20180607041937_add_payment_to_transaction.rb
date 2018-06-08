class AddPaymentToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :payment, :boolean
  end
end
