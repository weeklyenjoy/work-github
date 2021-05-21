class Customer::CartItemsController < ApplicationController
  before_action :set_cart_item, only: [:create, :update, :destroy]

  def index
    @cart_items = current_customer.cart_item
  end

  def create
   if @cart_item.blank?
     @cart_item = current_customer.cart_items.build(item_id: params[:item_id])
   end

  @cart_item.volume += params[:volume].to_i
  @cart_item.save
  redirect_to customer_items_path

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
    CartItem.destroy_all
    redirect_to customer_cart_items_path
  end

  private

  def setup_cart_item!
    @cart_item = current_customer.cart_items.find_by(item_id: params[:item_id])
  end

end
