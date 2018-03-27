Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :articles do

  end

  resources :personals do

  end

end