class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user
      if user.wrong_login_count >= 5
        flash.now.alert = "User is blocked, more than 5 wrong password tries!"
        render 'new'
      elsif User.authenticate?(user, params[:session][:password])
        user.update(wrong_login_count: 0)
        log_in user
        redirect_to root_url, notice: "Logged in!"
      else
        user.increment!(:wrong_login_count, by = 1)
        flash.now.alert = "Invalid password!"
        render 'new'
      end
    else
      flash.now.alert = "Invalid email!"
      render 'new'
    end
  end

  def destroy
  end
end
