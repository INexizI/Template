Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :users, only: [:show, :edit, :update] do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end
  resources :games do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end
  resources :studios do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end
  resources :news do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end

  get 'games/genre/:tag', to: 'games#index', as: :tag

  get 'announced', to: 'games#announced'
  get 'genres', to: 'games#genre'

  get 'technology', to: 'news#technology'
  get 'game', to: 'news#game'

end
