class User < ActiveRecord::Base

	def full_name
		flname
	end

	def email
		email
	end

	attr_accessor :password

	before_save :encrypt_password

	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end


	has_many :post

end

class Posts < ActiveRecord::Base

	belongs_to :user

end