Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to =>"homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  end

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
  devise_for :users
   resources :users,only: [:show,:index,:edit,:update]
   resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

