Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :users
      post '/login', to: 'users#login'
      get '/authenticate', to: 'users#authenticate'
    
      
      
    end
  end

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :categories
    end
  end
  


end
