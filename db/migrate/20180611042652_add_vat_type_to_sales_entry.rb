class AddVatTypeToSalesEntry < ActiveRecord::Migration
  def change
    add_column :sales_entries, :vat_amount, :float, default: 0
  end
end
