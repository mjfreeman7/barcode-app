class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_name(params[:name])
    if user 
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      redirect_to login_path, notice: "Invalid name or password."
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
