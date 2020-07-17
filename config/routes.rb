Rails.application.routes.draw do
  
  root to: "public#homepage"
  devise_for :accounts
  get '/dashboard', to: 'accounts#index'
  get '/profile/:username', to: 'accounts#show', as: :profile
  get 'post/like/:post_id', to: 'likes#create', as: :like_post
  post 'follow/account', to: 'accounts#follow_account', as: :follow_account
  resources :posts, only: [:new, :create, :show]

end
