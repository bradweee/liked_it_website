class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :password))  
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  def update
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    flash[:success] = 'OK!'
    redirect_to root_path
  end

  def destroy
  end

end
