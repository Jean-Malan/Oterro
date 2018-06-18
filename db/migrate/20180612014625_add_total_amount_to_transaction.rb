class AddTotalAmountToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :total_amount, :float
  end
end
