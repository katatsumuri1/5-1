Rails.application.routes.draw do
  
  devise_for :users
  
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  
  resources :books, only: [:create, :index, :show, :edit, :destroy ,:update] 
  resources :users, only: [:show,:index,:edit,:update]
  
  
  
end