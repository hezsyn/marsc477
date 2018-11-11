class User < ApplicationRecord
	has_many :roles
	has_secure_password

	def full_name
		self.first_name + self.last_name
	end

	def createUser
		user_name = self.first_name[0] + self.last_name
		user_name.downcase
	end
end
