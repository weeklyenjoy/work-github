Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end
end
