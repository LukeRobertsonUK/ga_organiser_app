class Announcement < ActiveRecord::Base
  attr_accessible :announcement_image, :announcement_text, :user_id
  belongs_to :user
end
