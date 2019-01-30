Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :agents
      resources :matches
      resources :pictures
      resources :properties
      resources :renters
    end
  end
end
