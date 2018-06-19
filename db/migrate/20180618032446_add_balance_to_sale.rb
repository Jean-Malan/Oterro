class AddBalanceToSale < ActiveRecord::Migration
  def change
    add_column :sales, :balance, :float
  end
end
