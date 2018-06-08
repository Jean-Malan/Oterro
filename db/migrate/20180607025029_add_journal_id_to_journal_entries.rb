class AddJournalIdToJournalEntries < ActiveRecord::Migration
  def change
    add_column :journal_entries, :journal_id, :integer
  end
end
