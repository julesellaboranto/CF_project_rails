class StaticPagesController < ApplicationController
  def landing_page
    @products = Product.first
    @products = Product.limit(3)
  end

 #module CarouselHelper
  #def carousel_for(images)
    #Carousel.new(self, images).html
  #end
end


