class UserDashboardController < ApplicationController
       before_filter :authenticate


  def index
      @future_courses = Course.future.all.uniq
      @past_courses = Course.past.all.uniq
      @announcements = Announcement.order('updated_at DESC').limit(10)
      @enrollments = Enrollment.where(user_id: session[:user_id])
  end



end
