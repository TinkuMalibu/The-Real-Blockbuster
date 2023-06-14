Rails.application.routes.draw do

  root to: "pages#home"
  resources :movies do
    resources :rentals, only: %i[new create]
  end
  resources :rentals, except: %i[edit]

  devise_for :users
  resources :users, only: %i[show] do
    get "/my_movies", to: "users#my_movies", as: :my_movies
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
