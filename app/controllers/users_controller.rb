class UsersController < ApplicationController

  before_action :set_post, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def set_post
    @user = current_user
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :photo_url, :ingredients, :directions)
  end
end
