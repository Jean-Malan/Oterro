json.extract! sales_entry, :id, :product_id, :description, :quantity, :price, :vat_type, :account_id, :total_price, :created_at, :updated_at
json.url sales_entry_url(sales_entry, format: :json)
