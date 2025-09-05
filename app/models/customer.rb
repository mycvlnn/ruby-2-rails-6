# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :orders
  has_many :books, through: :orders
  has_many :reviews, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
