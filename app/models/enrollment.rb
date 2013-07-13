class Enrollment < ActiveRecord::Base
  attr_accessible :fee, :grade, :involvement, :user_id, :course_id, :enrolled_user_comments_ids
  belongs_to :user
  belongs_to :course
  has_many :enrolled_user_comments
end
