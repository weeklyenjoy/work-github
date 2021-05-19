Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end
=======
  
  namespace :admin do
    root to: "homes#top"
  end

  devise_for :admins

>>>>>>> 622e1b4caada880051b0099149eab0c330a0e59f
end
