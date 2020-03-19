Rails.application.routes.draw do
  root :to => "pages#index"
  get "/pages/search" => "pages#search"
  resources :fighters
  resources :specials
  resources :games
  resources :users

  get 'session/new'

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
end
