Rails.application.routes.draw do
  resources :families
  resources :member
  #root "inventory#index", :as => "inventory"
  get 'inventory', to: "inventory#index", :as =>'inventory'

  get 'shopping', to: "shopping#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'member', to: "member#index", :as =>'member'
  get 'notification', to: "notification#index"

  get 'new_inventory', to: "inventory#new"
  get 'inventory/:item_id/edit', to: "inventory#edit"
  get 'new_member', to: "member#new"

  patch '/inventory/:item_id/edit', to: 'inventory#update'
  get 'family', to: "family#index"

  resources :inventory
  # Defines the root path route ("/")
  # root "articles#index"
end
