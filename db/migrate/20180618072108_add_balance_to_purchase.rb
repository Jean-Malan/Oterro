class AddBalanceToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :balance, :float
  end
end
