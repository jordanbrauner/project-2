class CreateRecipeBoxJoinTable < ActiveRecord::Migration
  def change
    create_join_table :recipes, :boxes do |t|
      t.index :recipe_id
      t.index :box_id
    end
  end
end
