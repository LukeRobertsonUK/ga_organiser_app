class Course < ActiveRecord::Base
  attr_accessible :advertised_fee, :course_image, :description, :name, :course_category_id, :lessons_ids, :classrooms_ids, :enrollments_ids, :users_ids
  belongs_to :course_category
  has_many :lessons
  has_many :classrooms, :through => :lessons
  has_many :enrollments
  has_many :users, :through => :enrollments
end
