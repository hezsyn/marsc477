class Simulation < ApplicationRecord
	has_many 										:trajectories
	has_many 										:logs
	has_many 										:commands
	has_and_belongs_to_many 			:engines
	has_and_belongs_to_many 		  	:sensors
end
