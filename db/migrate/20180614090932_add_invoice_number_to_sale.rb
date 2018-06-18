class AddInvoiceNumberToSale < ActiveRecord::Migration
  def change
    add_column :sales, :invoice_number, :integer
  end
end
