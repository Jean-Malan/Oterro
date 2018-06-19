class AddNetPriceToPurchaseEntry < ActiveRecord::Migration
  def change
    add_column :purchase_entries, :net_price, :float
  end
end
