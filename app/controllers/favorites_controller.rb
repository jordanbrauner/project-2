class FavoritesController < ApplicationController

  before_action :fav_vars, only: [:add_to_fav, :remove_from_fav]

  def add_to_fav
    @favorite = @user.favorites.find_by({ recipe_id: @recipe.id })
    if @favorite
      redirect_to recipe_path(@recipe)
    else
      @user.favorites.create( { user_id: @user.id, recipe_id: @recipe.id } )
      redirect_to recipe_path(@recipe)
    end
  end

  def remove_from_fav
    @favorite = @user.favorites.find_by({ recipe_id: @recipe.id })
    @user.favorites.destroy(@favorite)
    redirect_to recipe_path(@recipe)
  end

  def fav_vars
    @user = current_user
    @recipe = Recipe.find(params[:id])
  end

end
