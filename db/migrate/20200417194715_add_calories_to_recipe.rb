class AddCaloriesToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipies, :calories, :string
  end
end
