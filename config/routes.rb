Rails.application.routes.draw do
  root to: 'milkshakes#home'
  resources :milkshakes, only: %i[index show new create destroy] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: %i[destroy]
end
