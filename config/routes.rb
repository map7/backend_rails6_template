Rails.application.routes.draw do
  devise_for :users             # Standard devise routes must come first!
  resources :home, only: [:index]
  root to: "home#index"

  namespace :api, defaults: {format: 'json'} do # namespace devise token routes to stop duplication
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :home, only: [:index]
    end
  end
end
