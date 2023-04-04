Rails.application.routes.draw do
  root to: 'bootstraps#index'
  resources :bootstraps

  post 'bootstraps/ask', to: 'bootstraps#ask'

end
