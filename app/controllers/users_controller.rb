class UsersController < ApplicationController

  before_action :user_vars, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
    @contributor = User.find(params[:id])
    @contributor_latest = @contributor.recipes.last
  end

  def edit
  end

  def update
    if @user.update!(user_params)
      flash[:notice] = "#{@user.username} was updated."
      redirect_to @user
    else
      render :edit
    end
  end

  def user_vars
    @user = current_user
    @recipes = Recipe.all
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :photo_url)
  end
end
