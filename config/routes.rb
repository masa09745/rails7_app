Rails.application.routes.draw do
  get 'shop/index'
  devise_for :users

  root to: "shop#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
