Rails.application.routes.draw do
  # get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Bookmarks Routes
  resources :lists do
    resources :bookmarks, only: %i[new create destroy]
  end

  resources :movie
  # Defines the root path route ("/")
  root 'lists#index'
end
