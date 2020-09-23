Rails.application.routes.draw do


  devise_for :users

 root to: 'home#start'
get 'home/about' => 'home#about' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:create, :index, :show, :edit, :destroy ,:update] 

   resources :users, only:[:show, :index, :edit, :update]
end