HeroApp::Application.routes.draw do
  get "profile/index"

  get "profile/dashboard"

  get "inicio/index", as: "inicio"
  get "profile/index", as: "profile"

  devise_for :user do
     get "/login", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
     get "/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
     get "/register", :to => "devise/registrations#new" # Add a Custom Route for Registrations
  end

  root :to => 'inicio#index'

  namespace :admin  do
    root to: "application#index"
  end

  resources :users do
    resources :profile
  end
end
