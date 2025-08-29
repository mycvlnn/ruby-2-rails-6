class AddAgeToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :age, :integer

    # Populate data with random age between 15 and 30
    reversible do |dir|
      dir.up do
        Author.reset_column_information
        Author.find_each do |author|
          author.update_columns(age: rand(15..30))
        end
      end
      # dir.down: Không cần logic đặc biệt vì rollback sẽ xóa cột
    end
  end
end
