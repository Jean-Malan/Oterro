class AddSaleIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :sale_id, :integer
  end
end
