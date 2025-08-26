class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :orders_count
      t.string :nullable_country

      t.timestamps
    end
  end
end
