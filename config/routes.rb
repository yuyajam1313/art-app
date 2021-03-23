Rails.application.routes.draw do
  devise_for :users
  root to: "staticpages#index"
  resources :posts, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
end
