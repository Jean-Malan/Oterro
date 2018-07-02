class AddNetAmountToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :net_amount, :float
  end
end
