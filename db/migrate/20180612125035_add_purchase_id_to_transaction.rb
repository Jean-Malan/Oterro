class AddPurchaseIdToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :purchase_id, :integer
  end
end
