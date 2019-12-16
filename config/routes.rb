Rails.application.routes.draw do
  devise_for :users

  root 'home#home'
  get "/u/:username", to: "users#index", as: "users"

  resources :users do
    resources :workouts, except: [:index]
  end
end
