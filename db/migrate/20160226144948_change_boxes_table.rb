class ChangeBoxesTable < ActiveRecord::Migration
  def change
    remove_column :boxes, :user_id
    remove_column :boxes, :recipe_id
  end
end
