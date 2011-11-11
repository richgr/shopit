Shopit::Application.routes.draw do

  get "sessions/new"

  match "/new" => "users#new"
  match "/users" => "users#index"

end
