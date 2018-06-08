json.extract! transaction, :id, :date, :description, :amount, :reference, :bank_id, :account_id, :purchase_invoice_id, :sales_invoice_id, :contact_id, :vat_amount, :vat, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
