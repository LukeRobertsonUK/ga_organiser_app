class HomeController < ApplicationController
  # load_and_authorize_resource

  def index
     @courses = Course.all
     @announcements = Announcement.order('updated_at DESC')
  end
end
