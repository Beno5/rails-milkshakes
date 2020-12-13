# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :milkshakes, only: %i[index show new create edit update destroy] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: %i[destroy]
end
