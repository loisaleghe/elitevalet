Rails.application.routes.draw do
  devise_for :users, controllers: {
        #registrations: "register_controller"
      }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'register/account_info'
end
