class Employee < ApplicationRecord
  has_many :pictures, as: :imageable, dependent: :destroy
  has_many :subordinates, class_name: 'Employee', foreign_key: 'manager_id', dependent: :nullify
  belongs_to :manager, class_name: 'Employee', optional: true

  scope :managers, -> { where(id: Employee.distinct.pluck(:manager_id)) }
end
