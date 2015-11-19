class AddRecipeIdToBoxes < ActiveRecord::Migration
  def change
    change_table :boxes do |t|
      t.references :recipe, index: true, foreign_key: true
    end
  end
end
