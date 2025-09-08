class CreateSuppliersAndAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :accounts do |t|
      t.references :supplier, index: { unique: true }, foreign_key: true
      t.string :account_number, null: false
      t.timestamps
    end
  end
end
