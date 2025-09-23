# frozen_string_literal: true

# Supplier model
class Supplier < ApplicationRecord
  has_one :account, ->(supplier) { where(active: supplier.active) }, dependent: :destroy
  has_one :account_history, through: :account
end
