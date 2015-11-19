class BoxesController < ApplicationController

  before_action :set_post, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @user = current_user
  end

  def show
    @box = Box.find(params[:id])
  end

  def new
    @box = @user.boxes.new
  end

  def create
    @box = @user.boxes.new(box_params)
    if @box.save
      flash[:notice] = "#{@box.title} was created."
      redirect_to user_boxes_path(@user)
    else
      render :new
    end
  end

  def set_post
    @boxes = Box.all
    @recipes = Recipe.all
    @user = current_user
  end

  private
  def box_params
    params.require(:box).permit(:title, :user_id)
  end

end