Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #main webpage route
  get '/', to: 'welcome#index'

  #wyatt routes
  get '/supply_side', to: 'supply_side#index'

  get '/suppliers', to: 'suppliers#index'
  get '/suppliers/new', to: 'suppliers#new'
  post '/suppliers', to: 'suppliers#create'
  delete '/suppliers/:id', to: 'suppliers#destroy'
  get '/suppliers/:id', to: 'suppliers#show'
  get '/suppliers/:id/edit', to: 'suppliers#edit'
  patch '/suppliers/:id', to: 'suppliers#update'
  get '/suppliers/:id/supply_trucks', to: 'suppliers#supply_trucks'
  get '/suppliers/:id/supply_trucks/new', to: 'supply_trucks#new'
  post '/suppliers/:id/supply_trucks', to: 'supply_trucks#create'

  get '/supply_trucks', to: 'supply_trucks#index'
  # post '/supply_trucks', to: 'supply_trucks#create'
  get '/supply_trucks/true', to: 'supply_trucks#true'
  delete '/supply_trucks/:id', to: 'supply_trucks#destroy'
  get '/supply_trucks/:id', to: 'supply_trucks#show'
  get '/supply_trucks/:id/edit', to: 'supply_trucks#edit'
  patch '/supply_trucks/:id', to: 'supply_trucks#update'



  #kevin routes
  get '/eats', to: 'eats#index'
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new'
  get '/restaurants/:id/sorted', to: 'restaurants#sorted'

  post '/restaurants', to: 'restaurants#create'
  delete '/restaurants/:id', to: 'restaurants#destroy'

  get '/restaurants/:id', to: "restaurants#show"
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  get '/restaurants/:id/chefs', to: 'restaurants#chefs'

  get '/chefs', to: 'chefs#index'
  post '/chefs', to: 'chefs#create'
  get '/chefs/new', to: 'chefs#new'
  get '/chefs/true', to: 'chefs#true'
  get '/chefs/:id', to: "chefs#show"
  get '/chefs/:id/edit', to: 'chefs#edit'
  patch '/chefs/:id', to: 'chefs#update'
  delete '/chefs/:id', to: 'chefs#destroy'


end

# get '/tasks', to: 'tasks#index'
# get '/tasks/new', to: 'tasks#new'
# post '/tasks', to: 'tasks#create'
# get '/tasks/:id', to: "tasks#show"
# get '/tasks/:id/edit', to: 'tasks#edit'
# patch '/tasks/:id', to: 'tasks#update'
# delete '/tasks/:id', to: 'tasks#destroy'
