class StaticPagesController < ApplicationController
  def landing_page
    @products = Product.first
    @products = Product.limit(3)
  end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'jfl-@gmx.de',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
end

 #module CarouselHelper
  #def carousel_for(images)
    #Carousel.new(self, images).html
  #end
end


