# frozen_string_literal: true

# Account history model
class AccountHistory < ApplicationRecord
  belongs_to :account
end
