class UsersController < ApplicationController
	def new
	end

	def create
		user = User.new(
			username: params[:username],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation]
			)

		if user.save
			session[:user_id] = user.id
			flash[:success] = 'Taddaaaa, Welcome aboard, you\'ve uccessfully signed up!'
			redirect_to root_path
		else
			flash[:warning] = 'Invalid entries check again!'
			redirect_to 'sign_up'
		end
	end
end