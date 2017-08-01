Rails.application.routes.draw do

  resources :tests

  resource :course_result do
    # Custom routes for courses
    get '/courses', to: 'course_result#show'
    get '/courses/history', to: 'course_result#history'
  end

  resources :source_provider

  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
