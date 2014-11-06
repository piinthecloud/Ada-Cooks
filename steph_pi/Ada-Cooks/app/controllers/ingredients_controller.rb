class IngredientsController < ApplicationController

  def index
    @ingredient = Ingredient.all

  end

  def new
    @ingredient = Ingredient.new
  end

  def create

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    # @ingredient = Ingredient.find(params[:id])
    # if @ingredient.update(ingredient_params)
    #   redirect_to ingredients_index_path
    # else
    #   render :edit
    # end

  end


  private


  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity)
  end
end
