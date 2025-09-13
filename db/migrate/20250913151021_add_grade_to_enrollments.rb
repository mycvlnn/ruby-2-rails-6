class AddGradeToEnrollments < ActiveRecord::Migration[6.1]
  def change
    add_column :enrollments, :grade, :decimal
  end
end
