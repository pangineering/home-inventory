Rails.application.routes.draw do
  root "inventory#index"
  get 'inventory', to: "inventory#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
