class StaticPagesController < ApplicationController
  def landing_page
    @products = Product.limit(3)
  end

   def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'juliaf.landsiedel@gmail.com',
      :subject => "A new contact form message from #{name}")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

 #module CarouselHelper
  #def carousel_for(images)
    #Carousel.new(self, images).html
  #end
end


