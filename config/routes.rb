Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #main webpage route
  get '/', to: 'welcome#index'

  #wyatt routes
  get '/supply_side', to: 'supply_side#index'
  get '/suppliers', to: 'suppliers#index'
  get '/supply_trucks', to: 'supply_trucks#index'
  get '/suppliers/:id', to: 'suppliers#show'
  get '/supply_trucks/:id', to: 'supply_trucks#show'
  get 'suppliers/:id/supply_trucks', to: 'suppliers#supply_trucks'







  #kevin routes
  get '/eats', to: 'eats#index'
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: "restaurants#show"
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  get '/restaurants/:id/chefs', to: 'restaurants#chefs'

  get '/chefs', to: 'chefs#index'
  get '/chefs/:id', to: "chefs#show"
  get '/chefs/:id/edit', to: 'chefs#edit'
  patch '/chefs/:id', to: 'chefs#update'
end
