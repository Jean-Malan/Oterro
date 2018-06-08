class AddGlAccountIdToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :gl_account_id, :integer
  end
end
