class RemoveTypeFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :type, :string
  end
end
