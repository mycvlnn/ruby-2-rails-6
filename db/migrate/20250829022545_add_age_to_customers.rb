class AddAgeToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :age, :integer

    reversible do |dir|
      dir.up do
        Customer.reset_column_information
        Customer.find_each do |customer|
          customer.update_columns(age: rand(15..30))
        end
      end
      # dir.down: Không cần logic đặc biệt vì rollback sẽ xóa cột
    end
  end
end
