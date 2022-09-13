Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :declarations do
    resources :declaration_items, only: %i(new create edit update destroy)
  end
end
