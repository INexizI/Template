Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :users, only: [:show, :edit, :update] do
    resources :scores, except: [:index, :new, :show]
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end
  resources :games do
    resources :scores, except: [:index, :new, :show]
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
  resources :publishers do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end

  resources :conversations do
    resources :messages
  end

  get 'mails', to: 'users#mail'

  get 'games/genre/:tag', to: 'games#index', as: :tag

  get 'announced', to: 'games#announced'
  get 'genres', to: 'games#genre'

  get 'technology', to: 'news#technology'
  get 'game', to: 'news#game'

  get :search, controller: :search
end
