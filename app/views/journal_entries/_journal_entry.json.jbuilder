json.extract! journal_entry, :id, :description, :amount, :account_id, :debit, :credit, :date, :user_id, :created_at, :updated_at
json.url journal_entry_url(journal_entry, format: :json)
