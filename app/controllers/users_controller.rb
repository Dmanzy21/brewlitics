class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      @user.send_activation_email
      flash[:info] = "You have successfully signed up to receive updates."
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

end
