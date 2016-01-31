class UsersController < ApplicationController

  before_action :set_post, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
    @contributor = User.find(params[:id])
    @contributor_latest = @contributor.recipes.last
  end

  # AM: Looks like you end up using `set_post` in a number of controllers. What about making this into a application-wide helper method so that you don't have to keep defining it in each controller.
  # AM: `application_controller` would be a good place for it. 
  def set_post
    @user = current_user
    @recipes = Recipe.all
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :photo_url, :ingredients, :directions)
  end
end
