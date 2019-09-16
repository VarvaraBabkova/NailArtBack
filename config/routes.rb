Rails.application.routes.draw do
  # resources :nail_polishes
  # resources :nail_plates
  resources :polishes, only: [:index]
  resources :plates, only: [:index]
  resources :nails
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
