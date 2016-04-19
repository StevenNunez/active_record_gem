class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      # t.integer :course_id
      # t.integer :student_id

      # t.belongs_to :course
      # t.belongs_to :student

      t.references :course, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
    end
  end
end
