Rails.application.routes.draw do
  resources :actions
  resources :clients_resources
  resources :resources
  resources :users_clients
  resources :clients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
