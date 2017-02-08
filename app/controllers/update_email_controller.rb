class UpdateEmailController < ApplicationController

	def admin
	end

	def new
    User.all.each do |user|
      if user[:activated]
        user.send_update_email
      end
    end
    flash[:info] = "Update sent."
    redirect_to root_url
	end
end
