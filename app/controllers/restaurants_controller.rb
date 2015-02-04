class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params["id"])
    @review = []
    
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
