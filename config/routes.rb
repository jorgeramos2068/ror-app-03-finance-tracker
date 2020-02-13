Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Root
  root 'welcome#index'
  # Devise routes
  devise_for :users
  # My Portfolio
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  # User stocks
  resources :user_stocks
end
