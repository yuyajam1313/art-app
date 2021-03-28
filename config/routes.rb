Rails.application.routes.draw do
  devise_for :users
  root to: "staticpages#index"
  resources :staticpages, only:[:show]
  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end
end
