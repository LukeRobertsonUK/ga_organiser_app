class AdminDashboardController < ApplicationController
    before_filter :authenticate

  def index

      # @future_courses = Course.future.all.uniq
      @past_courses = Course.past
      @announcements = Announcement.order('updated_at DESC').limit(5)
      @clashing_lessons = Lesson.find_by_sql("select * from lessons join (select lesson_date, time_slot, classroom_id from lessons group by lesson_date, time_slot, classroom_id having count(*) >1) dupes on lessons.lesson_date = dupes.lesson_date and lessons.classroom_id = dupes.classroom_id and lessons.time_slot = dupes.time_slot")
      @lessonless_courses = Course.all.select{ |c| c.lessons.empty? }
      @future_courses = Course.future


  end
end
