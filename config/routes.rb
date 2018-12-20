Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :users, only: [:show, :edit, :update]
  resources :games
  resources :studios
  resources :news

  get 'games/genre/:tag', to: 'games#index', as: :tag

  get 'announced', to: 'games#announced'
  get 'genres', to: 'games#genre'

  get 'technology', to: 'news#technology'
  get 'game', to: 'news#game'

end
