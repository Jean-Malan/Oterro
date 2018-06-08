class AddPaymentEntryIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :payment_entry_id, :integer
  end
end
