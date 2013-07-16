class CourseCategory < ActiveRecord::Base
  attr_accessible :name, :courses_ids
  has_many :courses

  validates :name, presence: true
  validates :name, uniqueness:true
end
