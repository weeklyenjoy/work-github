class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_customer
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_cart_item
    if session[:cart_id]
      @cart_item = CartItem.find(session[:cart_item_id])
    else
      @cart_item = CartItem.create
      session[:cart_item_id] = @cart_item.id
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:telephone_number])
  end

end
