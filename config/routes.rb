Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard/index'
  resources :orders do
    member do
      post :change_order_status
    end
  end
  resources :products
  resources :product_categories
  resources :admin_users
  resources :home do
    collection do
      get :order_new
      get :order_list
      post :order_create
    end
  end
  root 'home#index'
  get 'sessions/new'
  get 'register', to: 'users#new'
  post 'register', to: 'users#create'
  get 'change_password', to: "users#edit"
  post 'change_password', to: "users#change_password"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
