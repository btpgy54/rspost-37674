Rails.application.routes.draw do
  devise_for :users
  root to: "clubs#index"
  resources :users, only: [:edit, :update]
end
