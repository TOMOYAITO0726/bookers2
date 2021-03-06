Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :edit, :create, :new, :update, :destroy]
  resources :users, only: [:index, :new, :create, :edit, :update, :show]
  root to: 'homes#top'
  get 'home/about'=>'homes#about'
  #get 'users/new'=>'users#new'
end
