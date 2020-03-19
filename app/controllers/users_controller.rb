class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index, :destroy, :reset_password]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save 
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end