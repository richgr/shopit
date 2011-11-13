Shopit::Application.routes.draw do

  get "sessions/new"

  resources :users

#  match "/new" => "users#new"
#  match "/users" => "users#index"

end
