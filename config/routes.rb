Rails.application.routes.draw do
  devise_for :users
  root to: "staticpages#index"
  resources :posts, only: [:new, :create, :show]
end
