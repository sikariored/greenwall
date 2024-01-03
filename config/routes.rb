Rails.application.routes.draw do
  root 'accounts#home'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :accounts, controllers: {
    registrations: 'registrations'
  }

  resources :accounts
  resources :roles
  resources :departments
  resources :secure_records
  resources :notes
end
