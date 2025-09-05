# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :book

  enum status: { pending: 0, shipped: 1, delivered: 2 }
end
