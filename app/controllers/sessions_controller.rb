class SessionsController < ApplicationController

	def create
		if @user = User.find_by_email(params[:email])
			if @user.authenticate(params[:password])
				redirect_to users_path
			else
				flash[:error] = "Wrong email or password"
			end
		else
			flash[:error] = "Wrong email or password"
		end
	end
end
