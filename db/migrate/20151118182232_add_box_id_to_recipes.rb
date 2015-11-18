class AddBoxIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :box_id, :integer
  end
end
