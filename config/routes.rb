Rails.application.routes.draw do
  resources :comments
  root 'home#index'
end
