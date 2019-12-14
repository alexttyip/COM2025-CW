Rails.application.routes.draw do
  devise_for :users #, controllers: {
  #    sessions: 'users/sessions'
  #}

  resources :users, only: [:index] do
    resources :workouts, except: [:index]
  end

  #root "users#index"
  root 'home#home'
  #get "/users/:id/workouts", to: "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
