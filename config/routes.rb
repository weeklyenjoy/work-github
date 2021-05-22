Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers
  root to: 'homes#top'
  get 'customers/:id/exit' => 'customer/customers#exit',as: 'customer_exit'
  patch 'customers/:id/withdrawal' => 'customer/customers#withdrawal', as: 'withdrawal'
  namespace :customer do
    resources :customers,only: [:show,:edit,:update,:destroy]
    resources :cart_items,only:[:index,:create,:destroy,:update]
    resources :items,only:[:index,:edit,:show,:create]
    resources :shipping_addresses,only:[:index,:create,:edit,:destroy,:update]
    resources :orders,only:[:index,:show,:new,:create,:confirm,:thanx]
    # CartItem
    delete 'cart_item/destroy_all' => 'cart_items#destroy_all'
  end


  get 'homes/about'


  namespace :admin do
    root to: "homes#top"
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update]
  end

end
