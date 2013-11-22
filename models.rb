class User < ActiveRecord::Base

	def full_name
		flname
	end

	def email
		email
	end

	has_many :posts

end

class Posts < ActiveRecord::Base

	belongs_to :user

end