class UsersController < ApplicationController

  def index
    @assets = User.all
    @title = "Users"
  end

  def show
    @assets = User.all
    @user = User.find(params[:id])
    @title = "Users"
    @notes = @user.user_notes.all
    @newNote = @user.user_notes.new
  end

  def new
    @title = "Users"
    @assets = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_name = @user.createUser
    if @user.save
      flash[:notice] = "User has been created"
      redirect_to user_path(@user)
    else 
        render 'new'
    end
  end

  def edit
    @title = "Users"
    @assets = User.all
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

  end

 def destroy
    session[:user_id] = nil
    redirect_to root_url, flash[:notice] = "Logged out"
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end