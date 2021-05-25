Rails.application.routes.draw do

  get 'customers/orders/thanx' => 'customer/orders#thanx',as: 'thanx'

  devise_scope :customer do
    get '/customers/sign_out' => 'devise/sessions#destroy'
    get '/customers/log_in' => 'devise/sessions#customer/new'
  end


  devise_for :customers, controllers: {
        sessions: 'customer/sessions'
      }

  devise_for :admins, controllers: {
        sessions: 'admin/sessions'
      }

  root to: 'homes#top'
  get 'customers/:id/exit' => 'customer/customers#exit',as: 'customer_exit'
  patch 'customers/:id/withdrawal' => 'customer/customers#withdrawal', as: 'withdrawal'
  get 'customers/orders/confirm' => 'customer/orders#confirm',as: 'confirm'
  namespace :customer do
    resources :customers,only: [:show,:edit,:update,:destroy]
    resources :cart_items,only:[:index,:create,:destroy,:update]
    resources :items,only:[:index,:edit,:show,:create]
    resources :shipping_addresses,only:[:index,:create,:edit,:destroy,:update]
    resources :orders,only:[:index,:show,:new,:create]
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
