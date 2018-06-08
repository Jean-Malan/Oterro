class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :description
      t.float :amount
      t.string :reference
      t.integer :bank_id
      t.integer :account_id
      t.integer :purchase_invoice_id
      t.integer :sales_invoice_id
      t.integer :contact_id
      t.float :vat_amount
      t.boolean :vat

      t.timestamps null: false
    end
  end
end
