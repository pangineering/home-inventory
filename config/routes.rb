Rails.application.routes.draw do
  resources :buy_lists
  resources :feeds
  resources :family_members
  resources :families
  
  #root "inventory#index", :as => "inventory"
  get 'inventory', to: "inventory#index", :as =>'inventory'

  get 'buy_lists', to: "buy_list#index", :as =>'shopping'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get 'members', to: "member#index", :as => 'members'
  get 'feed', to: "feeds#index"
  #get 'new_shopping', to: "shopping#new"
  get 'new_inventory', to: "inventory#new"
  get 'inventory/:item_id/edit', to: "inventory#edit"
  #get 'new_member', to: "member#new"

  patch '/inventory/:item_id/edit', to: 'inventory#update'
  get 'family', to: "family#index"
  get 'members', to: "family_members#index", :as => 'members'
  resources :inventory
  # Defines the root path route ("/")
  #root "articles#index"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"

  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
end
