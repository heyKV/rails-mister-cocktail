class CocktailsController < ApplicationController

before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    # no need for app/views/cocktails/create.html.erb
    redirect_to cocktails_path
  end

  def edit
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
  end

  def delete
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy


  end
end

def cocktail_params
  params.require(:cocktail).permit(:name)
end
