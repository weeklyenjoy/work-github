class Admin::OrdersController < ApplicationController

  def index
  	@orders = Order.all
  end

  def show
  	@order = Order.find(params[:id])
  	@ordered_items = @order.ordered_items
  end

  def update
    @order = Order.find(params[:id])
    @order.update(orders_params)
    @ordered_items = @order.ordered_items.all
    redirect_to admin_order_path(@order.id)
  end




  private

  def orders_params
    params.require(:order).permit(:status)
  end
end
