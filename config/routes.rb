Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :accounts
  root 'accounts#index'

  resources :accounts
  resources :roles
end
