class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @featured_product = Product.first
  end

  def index
  @products = Product.limit(3)
  end





end


