class Customer::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).reverse_order
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end


  private

  def cart_item_params
    params.require(:cart_item).permit(:volume)
  end
end
