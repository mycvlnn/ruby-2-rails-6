class CreateStudentsCoursesEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :courses do |t|
      t.string :title, null: false
      t.timestamps
    end

    # Join model có id riêng (PRIMARY KEY mặc định)
    create_table :enrollments do |t|
      t.references :student, null: false, foreign_key: true
      t.references :course,  null: false, foreign_key: true
      t.date :enrolled_on
      t.timestamps
    end

    # Chốt chặn trùng lặp cặp student_id và course_id
    add_index :enrollments, [:student_id, :course_id], unique: true
  end

end
