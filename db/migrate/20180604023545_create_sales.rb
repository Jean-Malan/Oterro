class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :number
      t.string :title
      t.string :address
      t.date :date
      t.date :due_date
      t.float :vat_total
      t.float :amount
      t.text :notes
      t.integer :customer_id
      t.integer :type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
