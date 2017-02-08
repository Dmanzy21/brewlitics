class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Welcome to Brewlitics"
  end

  def product_update(user,params)
    @user = user
    @subject = params[:updateEmail][:subject]
    @message = params[:updateEmail][:message]
    mail to: user.email, subject: "#{@subject}"
  end
end
