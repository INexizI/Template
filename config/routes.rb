Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :users, only: [:show, :edit, :update]
  resources :games do
    resources :comments, only: [:create, :destroy]
  end
  
  get 'games/genre/:tag', to: 'games#index', as: :tag

end
