class AddSalesTypeToSales < ActiveRecord::Migration
  def change
    add_column :sales, :sales_type, :integer
  end
end
