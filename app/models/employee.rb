class Employee < ApplicationRecord
  has_many :pictures, as: :imageable, dependent: :destroy
end
