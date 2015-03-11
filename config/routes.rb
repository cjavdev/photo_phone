Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :photos
    resources :descriptions
  end
end
