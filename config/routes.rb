Rails.application.routes.draw do
  root 'pages#home'

  # support stripe payments through charges
  resources :charges
end
