Rails.application.routes.draw do

  devise_for :customers
  root to: 'homes#top'
  resources :customers,only: [:show,:edit,:update,:destroy]
  namespace :customer do
    resources :customers,only: [:show,:edit,:update,:destroy]
    resources :cart_items,only:[:index,:create,:destroy,:update]
    resources :items,only:[:index,:edit,:show,:create]
    # CartItem
    delete 'cart_item/destroy_all' => 'cart_items#destroy_all'
  end

  get 'customers/exit'



  get 'homes/about'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
