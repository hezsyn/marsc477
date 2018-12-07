class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  def new
    @users = User.all
    @user = User.new
  end

  def create
    @users = User.all
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User has been created"
    else
      flash[:alert] = "Form is invalid" 
    end
    render 'new'
  end

  def edit
    @users = User.all
    @user = User.find(params[:id])
  end

  def update
    @users = User.all
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = "User #{@user.user_name} has updated"
    else
      flash[:alert] = "Failed to update user"
    end
    render 'show'
  end

 def destroy
    session[:user_id] = nil
    redirect_to root_url, flash[:notice] = "Logged out"
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :user_name)
    end
end