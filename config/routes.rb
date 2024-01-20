Rails.application.routes.draw do
  get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'movies', to: 'movies#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
