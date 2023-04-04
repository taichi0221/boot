Rails.application.routes.draw do
  root to: 'bootstraps#index'
  resources :bootstrap
end
