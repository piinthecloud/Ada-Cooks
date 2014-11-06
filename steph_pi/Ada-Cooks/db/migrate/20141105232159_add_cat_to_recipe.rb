class AddCatToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :cat, :string
  end
end
