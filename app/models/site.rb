class Site < ActiveRecord::Base
  attr_accessible :address, :directions, :name, :site_image, :telephone, :classrooms_ids
  has_many :classrooms
end
