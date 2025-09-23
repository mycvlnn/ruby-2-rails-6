# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books, -> { order(year_published: :asc) }, before_add: :check_credit_limit
  validates :name, presence: true

  def check_credit_limit(book)
    throw(:abort) if limit_reached?
  end

  def limit_reached?
    books.count >= 8
  end
end
