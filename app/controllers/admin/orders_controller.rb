class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!



  def index
  	@orders = Order.page(params[:page]).per(7)
  end

  def show
  	@order = Order.find(params[:id])
  	@ordered_items = @order.ordered_items
  end

  def update
    @order = Order.find(params[:id])
    @order.update(orders_params)
    @ordered_items = @order.ordered_items.all

    if @order.status == "入金確認"
	     @ordered_items.update_all(making_status: "製作待ち")
    end
       redirect_to admin_order_path(@order.id)
  end




  private

  def orders_params
    params.require(:order).permit(:status)
  end
end
