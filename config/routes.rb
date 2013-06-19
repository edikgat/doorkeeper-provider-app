DoorkeeperProvider::Application.routes.draw do
  use_doorkeeper

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
  }

  namespace :api do
    namespace :v1 do
      resources :profiles
      resources :users
      get '/me' => "credentials#me"
      get '/fast' => 'fast#index'
    end
  end

  get "/users/sign_up" => "users#new"
  post "/user" => "users#create"

  root :to => "home#index"
end
