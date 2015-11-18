class RecipesController < ApplicationController

  before_action :set_post, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    @recipe = Recipe.last
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = @user.recipes.new
  end

  def create
    @recipe = @user.recipes.new(recipe_params)
    # @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "#{@recipe.title} was created."
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update!(recipe_params)
      flash[:notice] = "#{@recipe.title} was updated."
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.user_id == @user.id
      @recipe.destroy
      redirect_to recipes_path
    end
  end

  def set_post
    @user = current_user
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :photo_url, :ingredients, :directions)
  end
end
