Rails.application.routes.draw do
  # * Read all restaurants
  get 'restaurants', to: 'restaurants#index'

  # * Create one restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'

  # * Read one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # * Update one restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # * Delete one restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # * Use this after today's challenges > resources :restaurants
end
