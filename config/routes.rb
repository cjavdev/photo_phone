Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resources :photo_descriptions
    resources :photos do
      collection do
        get 'next'
      end
    end

    resources :descriptions do
      collection do
        get 'next'
      end
    end
  end
end
