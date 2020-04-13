class Api::V1::RecipesController < ApplicationController
  def index
    recipe = Recipy.all.order(created_at: :desc)
    render json: recipe
  end

  def create
    recipe = Recipy.create!(recipe_params)
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    recipe&.destroy
    render json: { message: 'Recipe deleted!' }
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end

  def recipe
    @recipe ||= Recipy.find(params[:id])
  end
end
