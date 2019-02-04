Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :agents
      resources :matches
      resources :pictures
      resources :properties
      resources :renters
        get '/profile', to: 'renters#profile'
        post '/login', to: 'auth#create'
    end
  end
end
