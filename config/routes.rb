Primitives::Application.routes.draw do
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "create_primitive" => "heros#new", :as => "create_primitive"
  get "battlefield" => "users#battlefield", :as => "battlefield"
  root :to => "sessions#new"
  resources :users
  resources :sessions
  resources :heros
end
