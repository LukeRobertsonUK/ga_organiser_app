class Course < ActiveRecord::Base
  attr_accessible :advertised_fee, :course_image, :description, :name, :course_category_id, :lessons_ids, :enrollments_ids, :users_ids, :lessons_attributes, :site_id
  belongs_to :site
  belongs_to :course_category
  has_many :lessons
  has_many :classrooms, :through => :lessons
  has_many :enrollments
  has_many :users, :through => :enrollments

  accepts_nested_attributes_for :lessons, allow_destroy: true






end
