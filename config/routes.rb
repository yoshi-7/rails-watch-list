Rails.application.routes.draw do
  # get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Lists Routes
  # resources :lists, only: %i[index show new create]

  # Bookmarks Routes
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: %i[destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
