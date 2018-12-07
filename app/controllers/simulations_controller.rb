class SimulationsController < ApplicationController

  def index
    @simulations = Simulation.all
    @simulation = Simulation.first
  end

	def show
		@simulations = Simulation.all
    @simulation = Simulation.find(params[:id])
	end

  def new
    @simulations = Simulation.all
    @simulation = Simulation.new
  end

  def create
    @time = Time.now
    @simulations = Simulation.all
    @simulation = Simulation.new(sim_params)
    @simulation.name = Time.now
    @simulation.user_id = session[:user_id]
    @simulation.success?
    if @simulation.save
      flash[:notice] = "Simulation submitted sucessfully."
      render :show
    else 
      flash[:alert] = "Simulation Failed" 
      render :new
    end
  end

  def update
    @time = Time.now
    @simulations = Simulation.all
    @simulation = Simulation.new(sim_params)
    @simulation.name = Time.now
    @simulation.user_id = session[:user_id]
    @simulation.success?
    if @simulation.save
      flash[:notice] = "Simulation submitted sucessfully."
      render :show
    else 
      flash[:alert] = "Simulation Failed" 
      render :new
    end
  end

private
	def sim_params
		params.require(:simulation).permit(:name, :user_id, :z_position, :x_position, :y_position)
	end

  def require_login
    if @current_user == nil 
      redirect_to login_url
    end
  end
end
