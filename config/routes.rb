Rails.application.routes.draw do
  post 'babies/create', to: "babies#create"
  get 'user', to: "users#index"
  get 'babies/', to: "babies#index"
  post 'users/create', to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
