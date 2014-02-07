class AuthsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.find_by(username: params[:user][:username])
		if user.authenticates_with_password?(params[:user][:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome, #{current_user.username}!"
			redirect_to art_cars_path
		end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to art_cars_path
	end
end