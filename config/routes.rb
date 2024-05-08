Rails.application.routes.draw do
  resources :parks, only: [:show] do
    resources :dinosaurs, only: [:new, :create]
  end
  resources :dinosaurs, only: [:destroy]
end

# [ ] - As a user I can see one parks's dinosaurs
# => parks#show -> get '/parks/:id'

# [ ] - As a user I can add a dinosaur to a park
# => dinosaur#new -> get 'parks/:park_id/dinosaurs/new'
# => dinosaur#create -> post 'parks/:park_id/dinosaurs'

# [ ] - As a user I can release/execute a dinosaur
# => dinosaur#destroy -> delete '/dinosaurs/:id'
