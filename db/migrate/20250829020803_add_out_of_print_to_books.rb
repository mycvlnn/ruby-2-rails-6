class AddOutOfPrintToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :out_of_print, :boolean, default: false, null: false
  end
end
