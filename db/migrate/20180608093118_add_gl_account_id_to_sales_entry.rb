class AddGlAccountIdToSalesEntry < ActiveRecord::Migration
  def change
    add_column :sales_entries, :gl_account_id, :integer
  end
end
