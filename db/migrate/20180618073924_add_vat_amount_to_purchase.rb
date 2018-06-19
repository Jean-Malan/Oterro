class AddVatAmountToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :vat_amount, :float
  end
end
