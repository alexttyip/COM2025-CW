Rails.application.routes.draw do
  devise_for :users, path: "u"

  root 'home#home'
  get "/u/:username", to: "users#index", as: "users"

  resources :users, path: "u" do
    resources :workouts
  end
end
