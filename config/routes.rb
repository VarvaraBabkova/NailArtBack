Rails.application.routes.draw do
  get 'auths/new'
  # resources :nail_polishes
  # resources :nail_plates
  resources :polishes, only: [:index]
  resources :plates, only: [:index]
  resources :nails, only: [:index]
  # resources :projects
  resources :users, only: [:create]
  post "/login", to: "auths#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
