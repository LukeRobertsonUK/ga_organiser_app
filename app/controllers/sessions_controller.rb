class SessionsController < ApplicationController
  def new
  end

  def create
     user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
        if user.user_access == "admin"
          redirect_to admin_path, notice: 'Logged in with administrator access!'
        else
          redirect_to dashboard_path, notice: "Logger in with standard user access"
        end
    else
      flash.now.alert = "Invalid Login, Try Again!"
      render 'new'
    end
  end

  def destroy
       session[:user_id] = nil
    redirect_to root_url, notice: "logged out!"
  end
end



