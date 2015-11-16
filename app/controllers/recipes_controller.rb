class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :image_url)
    end
end
