Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'

  # support stripe payments through charges
  resources :charges, only: [:new, :create]

  # Route for showing purchases
  resources :purchases, only: [:show]
end
