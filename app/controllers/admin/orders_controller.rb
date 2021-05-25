class Admin::OrdersController < ApplicationController
  
  def index
  	@orders = Order.all
  end

  def show
  	@order = Order.find(params[:id])
  end
  
  def create
     @order = Order.new(order_params)
    if @order.save
       redirect_to admin_genres_path
    else
       @orders = Order.all
       render :index
    end
  end
  
  private

  def orders_params
    params.require(:order).permit(:status)
  end
end
