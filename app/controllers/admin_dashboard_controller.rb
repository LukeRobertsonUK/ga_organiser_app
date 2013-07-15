class AdminDashboardController < ApplicationController
    before_filter :authenticate

  def index
      # array of lessons representing course start dates

      @future_courses = Course.future.all.uniq
      @past_courses = Course.past.all.uniq
      @announcements = Announcement.order('updated_at DESC').limit(5)

  end
end
