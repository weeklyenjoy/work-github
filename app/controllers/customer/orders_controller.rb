class Customer::OrdersController < ApplicationController
  def index
    @oders = current_customer.oders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def confirm
  end

  def thanx
  end
end
