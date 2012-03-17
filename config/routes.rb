Omniauth::Application.routes.draw do
  match "/auth/:provider/callback" => "sessions#create"
  match "/logout" => "sessions#destroy", :as => "logout"
  match "/login" => "sessions#index", :as => "login"
  
  root :to => 'home#index'

  resources :home
  resources :sessions
end
