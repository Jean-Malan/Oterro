class AddGlAccountIdToPurchaseEntry < ActiveRecord::Migration
  def change
    add_column :purchase_entries, :gl_account_id, :integer
  end
end
