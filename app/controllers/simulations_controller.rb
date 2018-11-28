class SimulationsController < ApplicationController

  def index
    @simulations = Simulation.all
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
    @simulation = Simulation.new(sim_params)
    @simulation.user_id = session[:user_id]
    @simulation.success?
    if @simulation.save
      flash[:notice] = "Simulation submitted sucessfully."
      redirect_to simulation_path(@simulation)
    else 
      flash[:alert] = "Simulation Failed" 
    end
  end

  def update
    @simulation = Simulation.find(params[:id])
    if @simulation.update(sim_params)
      flash[:notice] = "Simulation updated"
      redirect_to simulation_path(@simulation)
    else
      flash[:alert] = "Failure to update"
      redirect_to simulation_path(@simulation)
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
