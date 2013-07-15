class HomeController < ApplicationController
  # load_and_authorize_resource

  def index
      # array of lessons representing course start dates
      @lessons = Lesson.order(:lesson_date).uniq_by(&:course_id)
      @courses = (@lessons.map {|lesson| lesson.course}).compact
      @announcements = Announcement.order('updated_at DESC')

  end
end
