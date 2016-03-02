class UsersController < ApplicationController

  before_action :user_vars, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
    @contributor = User.find(params[:id])
    @contributor_latest = @contributor.recipes.last
  end

  def user_vars
    @user = current_user
    @recipes = Recipe.all
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :photo_url, :ingredients, :directions)
  end
end
