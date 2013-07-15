class Lesson < ActiveRecord::Base
  attr_accessible :lesson_date, :time_slot, :course_id, :classroom_id
  belongs_to :course
  belongs_to :classroom

# scope :future, lambda { where('lessons.lesson_date>?', Time.now) }

end
