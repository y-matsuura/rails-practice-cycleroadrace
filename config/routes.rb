Rails.application.routes.draw do
  resources :teams
  resources :races
  resources :players
  resources :start_lists
end
