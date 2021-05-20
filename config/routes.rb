Rails.application.routes.draw do

  devise_for :customers
  resources :customers,only: [:show,:edit,:update,:destroy]
  namespace :customer do
  resources :cart_items,only:[:index,:create,:destroy,:update]
  resources :items,only:[:index,:edit]
   # CartItem
  delete 'cart_item/destroy_all' => 'cart_items#destroy_all'
end

  get 'customers/exit'

  root to: 'homes#top'

  get 'homes/about'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
