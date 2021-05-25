class Customer::OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.shipping_cost = 800
    @order.save!
    redirect_to thanx_path
  end

  def confirm
    @order = Order.new
    @order.payment_method = params[:order][:payment_method].to_i
    @order.address_option = params[:order][:address_option].to_i
    @order.status = params[:order][:status].to_i
    @order.shipping_cost = 800
    @cart_items = CartItem.where(id: current_customer.id)

  if params[:order][:address_option] == "0"
     @order.address = current_customer.address
     @order.postal_code = current_customer.postal_code
     @order.user_id = current_customer.id
     @order.name = current_customer.last_name + current_customer.first_name

  elsif
    params[:address_option] == "1"
    @sta = params[:order][:address].to_i
    @order_address = ShippingAddress.find(@sta)
    @order.postal_code = @order_address.postal_code
    @order.address = @order_address.address
    @order.name = @order_address.name

  elsif
    params[:address_option] == "2"
    @order.postal_code = params[:order][:postal_code]
    @order.address = params[:order][:address]
  end

  end

  def thanx

  end

  private

  def order_params
    params.require(:order).permit(:name,:address,:postal_code,:billing_amount,:payment_method,:status,:address_option)
  end
end
