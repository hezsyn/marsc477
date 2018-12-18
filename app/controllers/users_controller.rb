class UsersController < ApplicationController

  def index
    @simulation = Simulation.first
    @users = User.all
  end

  def show
    @simulation = Simulation.first
    @users = User.all
    @user = User.find(params[:id])
  end

  def new
    @simulation = Simulation.first
    @users = User.all
    @user = User.new
  end

  def create
    @simulation = Simulation.first
    @users = User.all
    @user = User.new(user_params)
    if @user.save
      flash.now.notice = "User has been created"
      render 'show'
    else
      flash.now.alert = "Form is invalid" 
      render 'new'
    end
  end

  def edit
    @simulation = Simulation.first
    @users = User.all
    @user = User.find(params[:id])
  end

  def update
    @simulation = Simulation.first
    @users = User.all
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash.now.notice = "User #{@user.user_name} has updated"
    else
      flash.now.alert = "Failed to update user"
    end
    render 'show'
  end

 def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :user_name)
    end
end