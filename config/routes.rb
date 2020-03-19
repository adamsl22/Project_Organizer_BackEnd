Rails.application.routes.draw do
  resources :to_dos
  resources :schedule_entries
  resources :project_cards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
