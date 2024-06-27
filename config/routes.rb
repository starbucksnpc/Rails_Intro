Rails.application.routes.draw do
  resources :books
  resources :villains
  resources :shorts
  # Add root route to direct to a main page or dashboard
  root "home#index"
end
