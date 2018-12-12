class SessionsController < ApplicationController

  layout false

  def new
    if @current_user != nil
      redirect_to login_path
    end
  end

  def create
    @simulation = Simulation.first
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to simulations_path, notice: 'Logged in!'
    else
      redirect_to login_path, alert: 'Incorrect log in credentials'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end

end
