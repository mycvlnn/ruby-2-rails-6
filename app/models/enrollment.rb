class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :enrolled_on, presence: true
  validates :grade, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, presence: true
end
