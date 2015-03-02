class UsersController < ApplicationController
	layout 'admin'
	before_action :authenticate_user!
	def index
		@users = User.where("role != '1'").count
	end
end
