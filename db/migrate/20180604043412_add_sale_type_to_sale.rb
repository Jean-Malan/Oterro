class AddSaleTypeToSale < ActiveRecord::Migration
  def change
    add_column :sales, :sale_id, :integer, default: 0
  end
end
