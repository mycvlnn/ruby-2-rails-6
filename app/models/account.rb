# frozen_string_literal: true

# Account model
class Account < ApplicationRecord
  belongs_to :supplier
end
