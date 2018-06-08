class AddReceiptEntryIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :receipt_entry_id, :integer
  end
end
