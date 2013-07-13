class Site < ActiveRecord::Base
  attr_accessible :address, :directions, :name, :site_image, :telephone, :classrooms_ids, :courses_ids
  has_many :classrooms
  has_many :courses
end
