Rails.application.routes.draw do

  devise_for :customers
  resources :cart_items,only:[:index]
  resources :items,only:[:index,:edit]
  resources :customers,only: [:show,:edit,:update,:destroy]

  get 'customers/exit'

  root to: 'homes#top'

  get 'homes/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
