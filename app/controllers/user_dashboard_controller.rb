class UserDashboardController < ApplicationController
       before_filter :authenticate


  def index
      @announcements = Announcement.order('updated_at DESC').limit(10)
      @future_user_courses = current_user.courses.future.uniq
      @past_user_courses = current_user.courses.past.uniq

      # @courses = Course.includes(:lessons).joins(:lessons).order("lessons.lesson_date").group(:id)
  end



end
