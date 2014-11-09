class IngredientsController < ApplicationController

  def index
    @ingredient = Ingredient.all

  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end

  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end


  def destroy
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.destroy
      redirect_to ingredients_path
    end
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
    params.require(:ingredient).permit(:name)
  end
end
