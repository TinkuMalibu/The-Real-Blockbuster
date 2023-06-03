Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/new'
  get 'movies/show'
  get 'movies/edit'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
