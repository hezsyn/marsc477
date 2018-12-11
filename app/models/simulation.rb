class Simulation < ApplicationRecord
	has_many 										:logs
	has_many 										:commands
	has_and_belongs_to_many 		:engines
	has_and_belongs_to_many     :sensors

  validates :x_position, presence: true

  def success?
    maybe = Random.rand(100)
    if maybe < 95 
      success = 1
    else
      success = 0
    end
    self.success = success  
  end
end
