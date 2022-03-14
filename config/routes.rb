Rails.application.routes.draw do
  resources :items
  get 'shop/index'
  devise_for :users

  root to: "shop#index"


  scope '/api' do
    get '/items', to: 'items#index', defaults: {format: :json}
    get '/items/:id', to: 'items#show', defaults: {format: :json}
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
