Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :articles do

  end

  resources :personals do
    get :identity, on: :collection
    post :impersonate, on: :member
    post :stop_impersonating, on: :collection
  end

end