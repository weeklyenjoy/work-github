class Admin::OrdersController < ApplicationController
  
  def index
  	@orders = Order.all
  end

  def show
  	@order = Order.find(params[:id])
  end
  
  private

  def orders_params
    params.require(:order).permit(:orders_status)
  end
end
