Rails.application.routes.draw do
  devise_for :users
  resources :ghosts
    root  "bob#joe"
end