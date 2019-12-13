Rails.application.routes.draw do
  resources :users do
    resources :workouts, except: [:index]
  end

  root "users#index"
  get "/users/:id/workouts", to: "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
