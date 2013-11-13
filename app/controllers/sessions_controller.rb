class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_barcode_id(params[:barcode_id])
    if user 
      session[:user_id] = user.id
      redirect_to menu_path, notice: "Logged in!"
    else
      redirect_to menu_path, notice: "Invalid name or password."
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to menu_path, notice: "Logged out!"
  end
end
