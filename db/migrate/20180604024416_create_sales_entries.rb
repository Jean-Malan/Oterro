class CreateSalesEntries < ActiveRecord::Migration
  def change
    create_table :sales_entries do |t|
      t.integer :product_id
      t.string :description
      t.float :quantity
      t.float :price
      t.integer :vat_type
      t.integer :account_id
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
