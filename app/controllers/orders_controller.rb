class OrdersController < ApplicationController #declares a class that inherits from ApplicationController, means it has access to all the methods inside application_controller.rb
  before_filter :authenticate_user!

  def index
    @orders = Order.where(@user_id)
    #@orders = Order.all
  end

  def show
    @order = Order.find(params[:id])  
  end

  def new
  end

  def create
  end
  
  def destroy
  end
end