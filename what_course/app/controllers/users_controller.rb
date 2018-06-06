class UsersController < ApplicationController
  before_action :redirect_if_loggedin!
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def redirect_if_loggedin!
    redirect_to root_path if current_user
  end
end
