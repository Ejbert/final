class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params["id"])
    @reviews = Review.where(restaurant_id: @restaurant.id)
    @users = []
    @reviews.each do |review|
      @users << User.find_by(id: review.user_id)
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant_params = params.require(:restaurant).permit!
    Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find_by(id: params["id"])
  end

  def update
    restaurant_params = params.require(:restaurant).permit!
    @restaurant = Restaurant.find_by(id: params["id"])
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant = Restaurant.find_by(id: params["id"])
    @restaurant.destroy
    redirect_to restaurants_path
  end

end
