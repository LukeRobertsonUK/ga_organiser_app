class UserDashboardController < ApplicationController
       before_filter :authenticate


  def index
      @announcements = Announcement.order('updated_at DESC').limit(5)
      @future_user_courses = current_user.courses.future.uniq
      @past_user_courses = current_user.courses.past.uniq
      @lessons = current_user.courses.map{|u| u.lessons}.flatten.sort_by(&:lesson_date)
      @future_lessons = @lessons.delete_if {|x| x.lesson_date < Date.today}
      @clashes = @future_lessons - @future_lessons.uniq{|x| (x.lesson_date.to_s + x.time_slot.to_s)}


  end



end
