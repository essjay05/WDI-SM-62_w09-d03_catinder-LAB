class CatsController < ApplicationController
  def welcome
    # render welcome page
  end

  # Render page with ALL cats
  def index
    @cats = Cat.all
  end

  # Render individual cat page
  def show
    @cat = Cat.find(params[:id])
  end

  # Render page to create NEW cat
  def new
    @cat = Cat.new
  end

  #Action to create new cat
  def create
    @cat = Cat.new(params.require(:cat).permit(:name, :image_uri, :votes))

    if @cat.save
      redirect_to cats_path
    else
      render :new
    end
  end

  # Render edit page for specific cat
  def edit
    @cat = Cat.find(params[:id])
  end

  # Action to update/edit specific cat
  def update
    @cat = Cat.find(params[:id])

    if @cat.update_attributes(params.require(:cat).permit(:name, :image_uri, :votes))
      redirect_to cat_path
    else
      render :edit
    end
  end

  # Action to delte/destroy specific cat
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to cats_path
  end
end
