Rails.application.routes.draw do
  root to: 'bootstraps#index'
  resources :bootstraps, only: [:new, :index]
end
