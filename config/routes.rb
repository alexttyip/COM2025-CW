Rails.application.routes.draw do
  devise_for :users, path: '', skip: [:sessions]
  as :user do
    get 'sign_in', to: 'devise/sessions#new', as: :new_user_session
    post 'sign_in', to: 'devise/sessions#create', as: :user_session
    match 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
  end

  root 'home#home'
  get 'contact', to: 'home#contact'
  get 'tree_map', to: 'home#tree_map'
  post 'request_contact', to: 'home#request_contact'

  get '/u/:username', to: 'users#index', as: :users

  resources :users, path: 'u' do
    resources :workouts
  end
end
