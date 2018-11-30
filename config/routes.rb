Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :users, only: [:show, :edit, :update]
  resources :games do
    resources :comments, only: [:create, :destroy]
  end
  resources :studios do
    resources :comments, only: [:create, :destroy]
  end
  resources :news do
    resources :comments, only: [:create, :destroy]
  end

  get 'games/genre/:tag', to: 'games#index', as: :tag

  get 'announced', to: 'games#announced'
  get 'genres', to: 'games#genre'

  get 'technology', to: 'news#technology'
  get 'game-news', to: 'news#game'

end
