Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :create, :destroy]

end
