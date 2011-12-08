Shopit::Application.routes.draw do

#  get "sessions/new"

  resources :users

  root :to => "users#index"
  
  match "/signup",        :to => "users#new"
#  match "/admin/users",   :to => "users#index"
  
  match "/signin",        :to => "sessions#new"
  match "/signout",       :to => "sessions#destroy"

end
