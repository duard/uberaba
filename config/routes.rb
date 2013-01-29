HeroApp::Application.routes.draw do

  devise_for :users

  root :to => 'inicio#index'

  namespace :admin  do
    root to: "application#index"
  end

end
