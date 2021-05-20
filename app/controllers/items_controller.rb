class ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).reverse_order
  end

  def show
    @cart_item = CartItem.new
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.item_id = @item.id
    @cart_item.save
    redirect_to cart_items_path
  end





  private

  def cart_item_params
    params.require(:cart_item).permit(:volume)
  end
end
