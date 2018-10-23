Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :users, only: [:show, :edit, :update] do
    resources :comments, only: [:create, :destroy]
  end

end
