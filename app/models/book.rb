# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  has_many :orders
  has_many :customers, through: :orders
  has_many :reviews, dependent: :destroy
end
