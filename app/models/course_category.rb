class CourseCategory < ActiveRecord::Base
  attr_accessible :name, :courses_ids
  has_many :courses
end
