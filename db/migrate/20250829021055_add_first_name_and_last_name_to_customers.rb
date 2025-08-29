class AddFirstNameAndLastNameToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string

     # Populate data based on existing name
    reversible do |dir|
      dir.up do
        Customer.reset_column_information
        Customer.find_each do |customer|
          if customer.name.present?
            parts = customer.name.split(' ')
            customer.update_columns(first_name: parts.first, last_name: parts[1..-1].join(' '))
          end
        end
      end
      # dir.down: Không cần logic đặc biệt vì rollback sẽ xóa cột
    end
  end
end
