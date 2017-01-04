Rails.application.routes.draw do
  root 'pages#home'

  # support stripe payments through charges
  resources :charges, only: [:new, :create]

  # Route for showing purchases
  resources :purchases, only: [:show]
end
