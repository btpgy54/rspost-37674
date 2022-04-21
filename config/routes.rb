Rails.application.routes.draw do
  devise_for :users
  root to: "clubs#index"
  resources :clubs
  resources :posts
end
