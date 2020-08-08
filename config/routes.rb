Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions:'users/sessions' }
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :create, :edit, :destroy, :update]

  root 'homes#top'
  get 'home/about', to: 'homes#index'

end