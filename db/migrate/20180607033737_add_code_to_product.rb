class AddCodeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :code, :integer
  end
end
