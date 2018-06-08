class AddSaleIdToSalesEntry < ActiveRecord::Migration
  def change
    add_column :sales_entries, :sale_id, :integer
  end
end
