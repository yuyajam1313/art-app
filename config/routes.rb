Rails.application.routes.draw do
  devise_for :users
  root to: "staticpages#index"
end
