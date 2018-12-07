class User < ApplicationRecord
	has_many 	:roles
	has_many 	:simulations
	has_secure_password
	validates :user_name, presence: true, uniqueness: { case_sensitive: false }
  
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :first_name, presence: true
  validates :last_name, presence: true


	def full_name
		self.first_name + " " +self.last_name
	end

end
