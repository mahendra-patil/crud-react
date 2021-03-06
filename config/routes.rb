Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  namespace :api do
    namespace :v1 do
     resources :fruits, only: [:index, :create, :destroy, :update]
    end
  end
end
