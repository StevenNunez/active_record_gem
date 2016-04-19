class Course < ActiveRecord::Base
  has_many :registrations
  has_many :students, through: :registrations
  # students table for column named course_id
end
