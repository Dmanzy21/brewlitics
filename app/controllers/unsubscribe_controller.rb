class UnsubscribeController < ApplicationController
	def edit
		user = User.find_by(email: params[:email])
		if user && user.activated?
			user.deactivate
			flash[:success] = "Succesfully unsubscribed"
			redirect_to root_url
		else
			flash[:danger] = "Invalid link"
			redirect_to root_url
		end
	end
end
