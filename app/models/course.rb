class Course < ActiveRecord::Base
  attr_accessible :advertised_fee, :course_image, :description, :name, :course_category_id, :lessons_ids, :enrollments_ids, :users_ids, :lessons_attributes, :site_id, :one_liner
  belongs_to :site
  belongs_to :course_category
  has_many :lessons
  has_many :classrooms, :through => :lessons
  has_many :enrollments
  has_many :users, :through => :enrollments

  accepts_nested_attributes_for :lessons, allow_destroy: true
  mount_uploader :course_image, CourseImageUploader

  scope :future, lambda {joins(:lessons).where('lessons.lesson_date > ?', Time.now)}
  scope :past, lambda {joins(:lessons).where('lessons.lesson_date < ?', Time.now)}


end
