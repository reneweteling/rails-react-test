Rails.application.routes.draw do
  resources :comments
  root 'home#index'
  get 'correct' => 'home#correct', as: :correct
  get 'wrong' => 'home#wrong', as: :wrong
end
