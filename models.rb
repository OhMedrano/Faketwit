class User < ActiveRecord::Base

	def full_name
		fname + lname
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

	def self.authenticate(email,password)
		user = User.where(email: email).first
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end
	
	#For some reason, this part is still buggy. I am not sure what happened, but it has
	#been giving me problems. 
	has_many :post



end

class Posts < ActiveRecord::Base
	#Same goes for this line here, same problem as line 24
	belongs_to :users

end