class UserMailer < ApplicationMailer
  default from: "juliaf.landsiedel@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'juliaf.landsiedel@gmail.com',
      :subject => "A new contact form message from #{name}")
  end
end