class User < ActiveRecord::Base
	has_many :lists
	has_many :items, through: :lists

	validates_presence_of :password, :username

	def authenticate?(pass)
		password == pass
	end


end
