class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.string :description
      t.float :amount
      t.integer :account_id
      t.boolean :debit
      t.boolean :credit
      t.date :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
