Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #main webpage route
  get '/', to: 'welcome#index'

  #wyatt routes
  get '/supply_side', to: 'supply_side#index'






  #kevin routes
  get '/eats', to: 'eats#index'
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: "restaurants#show"
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'

  get '/chefs', to: 'chefs#index'
  get '/chefs/:id', to: "chefs#show"

end
