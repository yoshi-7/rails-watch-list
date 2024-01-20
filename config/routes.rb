Rails.application.routes.draw do
  get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'movies', to: 'movies#index'
  get 'movies/new', to: 'movies#new'
  post 'movies', to: 'movies#create'
  get 'lists', to: 'lists#index'
  get 'lists/:id', to: 'list#show'
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'list#create'

  # Defines the root path route ("/")
  # root "articles#index"
end
