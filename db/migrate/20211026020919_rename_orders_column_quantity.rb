class RenameOrdersColumnQuantity < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :quanitity, :quantity
  end
end
