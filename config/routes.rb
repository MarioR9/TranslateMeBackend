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
      post '/visualRecognition', to: "categories#visualRecognition"
      post '/translate', to: "categories#translate"
      post '/findCategories', to: "categories#findCategories"
      post '/dupCategories', to: "categories#dupCategories"
      resources :categories
    end
  end

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :images
    end
  end
  


end
