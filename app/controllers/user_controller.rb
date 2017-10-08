class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def import
		User.import(params[:file])
		redirect_to root_url, notice: "Activity data imported!"
	end
end
