class Classroom < ActiveRecord::Base
  attr_accessible :classroom_image, :name, :seating_capacity, :site_id, :lessons_ids, :courses_ids
  has_many :lessons
  has_many :courses, :through => :lessons
  belongs_to :site
  mount_uploader :classroom_image, ClassroomImageUploader

  validates :name, presence: true
  validates :name, uniqueness:true



end
