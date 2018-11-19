class SimulationsController < ApplicationController

	def view
		@simulations = Simulation.all
		@simulation = Simulation.new(sim_params)
	end


private
	def sim_params
		params.permit(:simulation).require(:name, :x_position, :y_position, :z_position)
	end
end
