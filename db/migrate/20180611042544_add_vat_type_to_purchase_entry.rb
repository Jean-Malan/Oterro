class AddVatTypeToPurchaseEntry < ActiveRecord::Migration
  def change
    add_column :purchase_entries, :vat_type, :integer, default: 0
    add_column :purchase_entries, :vat_amount, :float
  end
end
