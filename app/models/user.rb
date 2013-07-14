class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :address, :birth_date, :email, :name, :profile, :telephone, :user_access, :user_image, :enrollments_ids, :courses_ids, :announcements_ids, :password, :password_confirmation
  has_many :enrollments
  has_many :courses, :through => :enrollments
  has_many :announcements

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true, on: :create


  def user_access?(user_access)
  self.user_access == user_access
end

end
