Rails.application.routes.draw do
  get 'user/index'

  get 'user/show'

  resources :tests
  resources :source_provider
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
