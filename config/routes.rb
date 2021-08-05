Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      devise_scope :user do
        post 'login', to: 'user_sessions#login', as: 'login'
        post 'manual_login', to: "user_sessions#manual_create"
      end
      resources :users, only: [:show ]
      post 'products/compare', to: "products#compare", as: :compare
      post 'routines/:id/routine_products', to: "routines#add_routine_product", as: :add_routine_product
      delete "routines/:id/routine_products/:id", to: "routines#destroy_routine_product", as: :destroy_routine_product

      resources :products, only: [:index, :show ]
      resources :routines, only: [:index, :show, :create, :update, :destroy ]
      

    end
  end
end
