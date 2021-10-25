class RenameUrltoImages < ActiveRecord::Migration[6.1]
  def change
    rename_table :urls, :images
  end
end
