Rails.application.routes.draw do

  resources :tests
  resources :source_provider
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
