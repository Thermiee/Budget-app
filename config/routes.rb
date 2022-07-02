Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  resources :groups, only: %i[index new create] do
    resources :operations, only: %i[index]
  end
  resources :operations, only: %i[new create]
end
