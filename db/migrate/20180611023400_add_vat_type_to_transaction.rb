class AddVatTypeToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :vat_type, :integer
  end
end
