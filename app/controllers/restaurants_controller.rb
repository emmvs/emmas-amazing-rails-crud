class RestaurantsController < ApplicationController
  # * The before_action method is used to set the @restaurant instance variable
  # * for the show, edit, update, and destroy actions,
  # * which helps keep the code DRY (Don't Repeat Yourself).

  before_action :set_restaurant, only: %i[show edit update destroy]
  # Antother way of doing this: > before_action :set_restaurant, except: %i[index new create]

  # * Gets all restaurants from the DB and assiging them to the @restaurants instance variable,
  # * which can be used in the corresponding view
  def index
    @restaurants = Restaurant.all
  end

  # * Gets one specific Restaurant from the DB
  def show
    # * We need the ID to show, edit/update, destroy which is set in our before_action
  end

  # * Initializes a new, empty Restaurant object/instance for the new view.
  def new
    # * raise > raise is a great tool for debugging, try it out whenever you can!
    @restaurant = Restaurant.new
  end

  # * Creates a new Restaurant object/instance with the params submitted from a form,
  # * saves it to the DB, and redirects us to the corresponding show page
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # * Gets the @restaurant instance variable to display the form for editing one specific restaurant
  def edit
  end

  # * Updates the attributes of one specific @restaurant object/instance based on the params submitted from a form,
  # * saves it to the DB, and redirects us to the corresponding show page.
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # * Destroys one specific @restaurant object/instance from the DB and redirects us to the index page for Restaurants
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  # * Sets the @restaurant instance variable based on the ID in the URL
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # * Whitelists the permitted params for the Restaurant model.
  # * This is security measure to prevent malicious users from submitting params that could be used to harm our system
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
