class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
		@users = User.all
		authorize User
	end

	def show
		@user = User.find(params[:id])
		authorize @user
	end

	def destroy
		user = User.find(params[:id])
		authorize user
		user.destroy
		redirect_to user_path, :notice => "User deleted"
	end

	def edit
		authorize User
		@users = User.all
	end
end
