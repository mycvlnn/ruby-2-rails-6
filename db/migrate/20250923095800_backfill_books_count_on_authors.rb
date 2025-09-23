class BackfillBooksCountOnAuthors < ActiveRecord::Migration[6.1]
  def up
    Author.find_each do |author|
      Author.reset_counters(author.id, :books)
    end
  end
end
