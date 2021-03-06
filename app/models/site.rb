class Site < ActiveRecord::Base
  attr_accessible :address, :directions, :name, :site_image, :telephone, :classrooms_ids, :courses_ids
  has_many :classrooms
  has_many :courses

  mount_uploader :site_image, SiteImageUploader
  validates :name, presence: true
  validates :name, uniqueness:true

end
