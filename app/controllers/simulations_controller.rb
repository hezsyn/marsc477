class SimulationsController < ApplicationController


	def view
		@simulations = Simulation.all
	end

private
	def sim_params
		params.require(:simulation).permit(:name)
	end

  def require_login
    if @current_user == nil 
      redirect_to login_url
    end
  end
end
