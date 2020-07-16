Rails.application.routes.draw do
  
  root to: "public#homepage"
  devise_for :accounts
  get '/dashboard', to: 'accounts#index'
  get '/profile/:username', to: 'accounts#show', as: :profile
  resources :posts, only: [:new, :create, :show]

end
