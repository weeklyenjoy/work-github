class Admin::OrdersController < ApplicationController
    
  def index
    @orders = Order.page(params[:page]).per(10)
  end
  
end
