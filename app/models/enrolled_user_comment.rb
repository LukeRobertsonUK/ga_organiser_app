class EnrolledUserComment < ActiveRecord::Base
  attr_accessible :comment_image, :comment_text, :enrollment_id
  belongs_to :enrollment
end
