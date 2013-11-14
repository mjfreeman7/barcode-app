class UsersController < ApplicationController

  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @jobs = @user.jobs.paginate(page: params[:page])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Successfully signed up."
    else
      render "new"
    end
  end

  private
  	def user_params
  		params.require(:user).permit(:name,:barcode_id,:password,:password_confirmation)
  	end
end