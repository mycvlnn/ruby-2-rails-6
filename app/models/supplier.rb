# frozen_string_literal: true

# Supplier model
class Supplier < ApplicationRecord
  has_one :account, dependent: :destroy
end
