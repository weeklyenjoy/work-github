class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @customers = Customer.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    render action: :show
  end

  private
   def customer_params
     params.require(:customer).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:email,:postal_code,:address,:telphone_number,:is_deleted)
   end

end
