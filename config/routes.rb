Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :vehicles do
    member do
      patch :checkout
    end
    collection do
      get :user, to: 'vehicles#user_vehicles'
    end
  end

  resources :users do
    resources :vehicles
    resources :roles
  end

  get 'signup/signup_info'
  get 'signup/updateaccount_info'
  get 'pages/home'
  #get 'users/:id' => 'users#show', as: :user_personal



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'register/account_info'

end
