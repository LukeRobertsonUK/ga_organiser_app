class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :address, :birth_date, :email, :name, :profile, :telephone, :user_access, :user_image, :enrollments_ids, :courses_ids, :announcements_ids, :password, :password_confirmation
  has_many :enrollments
  has_many :courses, :through => :enrollments
  has_many :announcements
  before_destroy :delete_enrollments

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true, on: :create
  mount_uploader :user_image, UserImageUploader

  def user_access?(user_access)
  self.user_access == user_access
end


  def delete_enrollments
    Enrollment.where(user_id: self.id).each do |enrollment|
      enrollment.destroy
    end
  end

end
