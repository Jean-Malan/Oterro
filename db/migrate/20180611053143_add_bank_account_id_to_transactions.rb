class AddBankAccountIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :bank_account_id, :integer
  end
end
