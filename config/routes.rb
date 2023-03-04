Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"
  # All of our items
  get "restaurants", to: "restaurants#index"
  # Get a new restaurant (form)
  get "restaurants/new", to: "restaurants#new"
  # One specific item
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # Save a specific restaurant to the DB
  post "restaurants", to: "restaurants#create"
  # Edit one restaurant (form)
  get "restaurants/:id/edit", to: "restaurants#edit"
  # Save the edited restaurant to the DB
  patch "restaurants/:id", to: "restaurants#update"
  # Delete on specific restaurant
  delete "restaurants/:id", to: "restaurants#destroy"
end
