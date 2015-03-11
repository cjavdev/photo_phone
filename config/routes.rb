Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
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
