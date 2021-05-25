class Admin::OrdersController < ApplicationController

  def index
  	@orders = Order.all
  end

  def show
  	@order = Order.find(params[:id])
  	@ordered_items = @order.ordered_items.all
  end

  def update
    @order = Order.find(params[:id])
    @order.update(orders_params)
    redirect_to admin_order_path(@order)
  end
<<<<<<< HEAD
  
  def create
     @order = Order.new(order_params)
    if @order.save
       redirect_to admin_genres_path
    else
       @orders = Order.all
       render :index
    end
  end
  
=======

>>>>>>> 93345f1f8ce4f284ebd9958ebef6897cab972b2e
  private

  def orders_params
    params.require(:order).permit(:status)
  end
end
