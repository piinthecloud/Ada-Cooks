class RecipeForm
  #code goes here

  def initialize(attributes)
    @attributes = attributes

  end

  def recipe
    @recipe
  end

  def submit
    #instance of the recipe class
    # create recipe ingradients for each if in the ingredients key
    @recipe = Recipe.create(
      name:         @attributes[:name],
      instructions: @attributes[:instructions],
      cat:          @attributes[:cat]
      )

    @attributes[:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id)
    end
  end

  def update(recipe_id)

    @recipe = Recipe.find(recipe_id)
    @recipe.update(
      name:         @attributes[:name],
      instructions: @attributes[:instructions],
      cat:          @attributes[:cat]
      )
    #destroy recipeingredients where the recipe id == recipe_id
    RecipeIngredient.destroy_all(recipe_id: @recipe.id)


    #@attributes[:ingredients].destroy
    @attributes[:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id)
    end

  end


end
