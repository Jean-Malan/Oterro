class AddGlAccountIdToJournalEntry < ActiveRecord::Migration
  def change
    add_column :journal_entries, :gl_account_id, :integer
  end
end
