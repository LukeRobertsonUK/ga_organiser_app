class User < ActiveRecord::Base
  attr_accessible :address, :birth_date, :email, :name, :profile, :telephone, :user_access, :user_image, :enrollments_ids, :courses_ids, :announcements_ids
  has_many :enrollments
  has_many :courses, :through => :enrollments
  has_many :announcements
end
