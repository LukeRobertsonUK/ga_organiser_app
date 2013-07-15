class UserDashboardController < ApplicationController
       before_filter :authenticate


  def index
      @announcements = Announcement.order('updated_at DESC').limit(10)
      @future_user_courses = current_user.courses.future.uniq
      @past_user_courses = current_user.courses.past.uniq
      @courses = Course.get_courses_ordered_by_first_lesson
  end



end
