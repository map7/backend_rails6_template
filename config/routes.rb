Rails.application.routes.draw do
  devise_for :users             # Standard devise routes must come first!

  namespace :api, defaults: {format: 'json'} do # namespace devise token routes to stop duplication
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/home", to: "home#index"
  root to: "home#index"
end
