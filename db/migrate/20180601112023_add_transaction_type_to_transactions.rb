class AddTransactionTypeToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :transaction_type, :integer, default: 0
  end
end
