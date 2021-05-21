class Customer::CartItemsController < ApplicationController

  def index
    @cart_items = CartItem.where(customer_id: current_customer.id)
    @cart_item = CartItem.new
  end

  def create
   @cart_item = current_customer.cart_items.new(params_cart_item)
   @cart_item.volume += params[:volume].to_i
   @cart_item.save
   redirect_to customer_cart_items_path

  end

  def update
    @cart_item.update(volume: params[:quantity].to_i)
    redirect_to customer_cart_items_path
  end

  def destroy
    @cart_item.destroy
    redirect_to customer_cart_items_path
  end

  def destroy_all
    @cart_items = current_customer.cart_items
    @cart_items.destroy_all
    redirect_to customer_cart_items_path
  end

  private

  def params_cart_item
    params.require(:cart_item).permit(:volume, :item_id)
  end


end
