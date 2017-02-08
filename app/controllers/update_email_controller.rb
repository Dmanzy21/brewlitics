class UpdateEmailController < ApplicationController

	def admin
		
	end

	def new
		@password = params[:updateEmail][:password]
		if @password == "Sailboat109"
			User.all.each do |user|
	      if user[:activated]
	        user.send_update_email(params)
	      end
    	end
	    flash[:info] = "Update sent."
	    redirect_to root_url
		else
			flash[:warning] = "#{@password}"
			redirect_to root_url
		end
	end


	private

		def user_params
      params.require(:updateEmail).permit(:subject, :message, :password)
    end

end
