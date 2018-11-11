class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to simulation_path, notice: 'Logged in!'
    else
      redirect_to root_path, alert: 'Incorrect log in credentials'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end

end
