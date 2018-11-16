class Engine < ApplicationRecord
	has_and_belongs_to_many 		:simulations
end
