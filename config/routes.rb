Rails.application.routes.draw do
  resources :categories
  resources :items
  resources :boxes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
