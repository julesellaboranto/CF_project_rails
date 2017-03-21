class UserMailer < ApplicationMailer
  default from: "juliaf.landsiedel@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'juliaf.landsiedel@gmail.com',
      :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  @appname = "Bikes Berlin"
  mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
  end
end