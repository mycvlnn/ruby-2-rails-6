class AddStatusToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :status, :integer, default: 0, null: false
    add_index :customers, :status
  end
end
