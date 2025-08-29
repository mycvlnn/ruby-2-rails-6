class PopulateFirstNameAndLastNameForAuthors < ActiveRecord::Migration[6.1]
  def up
    Author.reset_column_information
    Author.find_each do |author|
      if author.name.present?
        parts = author.name.split(' ')
        author.update_columns(first_name: parts.first, last_name: parts[1..-1].join(' '))
      end
    end
  end

  def down
    # Tùy chọn: Revert dữ liệu nếu cần (ví dụ: set first_name và last_name về nil)
    Author.update_all(first_name: nil, last_name: nil)
  end
end
