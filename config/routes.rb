Rails.application.routes.draw do
  resources :hosts
  resources :challenges do
    resources :results
  end
  resources :games
  resources :places
  resources :locations
  resources :records
  resources :users

  post '/signup',  to: 'users#create'

  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
