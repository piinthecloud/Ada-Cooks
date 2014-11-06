class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.submit
      redirect_to recipe_path(@recipe_form.recipe.id)
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_form_params)
      redirect_to recipe_path
    else
      render :edit
    end

  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path
    end
  end


  private

  def recipe_form_params
    params.require(:recipe_form).permit(:name, :instruction, :cat)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :instruction, :cat)
  end

end
