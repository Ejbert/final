class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find_by(id: params["id"])
    @recipe_elements = []
    @recipe_elements = Recipe.where(dish_id: @dish.id)
    @ingredients = []
    @recipe_elements.each do |recipe|
      @ingredients << Ingredient.find_by(id: recipe.ingredient_id)
    end
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
