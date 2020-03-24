Rails.application.routes.draw do
  resources :to_dos
  resources :project_cards
  resources :users

  get "/auth/github/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end