class AddIndexToBooksCreatedAt < ActiveRecord::Migration[6.1]
  def change
    add_index :books, :created_at
  end
end
