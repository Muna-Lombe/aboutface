Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      devise_scope :user do
        post 'login', to: 'user_sessions#create', as: 'login'
        post 'manual_login', to: "user_sessions#manual_create"
      end
      resources :users, only: [:show ]
      resources :products, only: [:index, :show ]
      resources :routines, only: [:index, :show, :create, :update, :destroy ]
      

    end
  end
end
