class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:session][:email].downcase,
                             params[:session][:password])
    if user
      log_in user
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
  end
end
