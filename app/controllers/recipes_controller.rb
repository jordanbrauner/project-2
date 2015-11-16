class RecipesController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index

  end

  # private
  #   def recipe_params
  #     params.require(:recipe).permit(:title, :image_url)
  #   end
end
