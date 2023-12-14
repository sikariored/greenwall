Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :accounts
  root 'static#home'

  resources :accounts, only: %i[index show]
  resources :roles
end
