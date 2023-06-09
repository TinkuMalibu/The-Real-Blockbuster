Rails.application.routes.draw do

  root to: "pages#home"
  resources :movies do
    resources :rentals, only: %i[new create]
  end
  resources :rentals, except: %i[edit]

  resources :users, only: %i[show]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
