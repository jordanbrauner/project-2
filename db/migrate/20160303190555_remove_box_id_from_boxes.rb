class RemoveBoxIdFromBoxes < ActiveRecord::Migration
  def change
    remove_column :boxes, :box_id, :integer
  end
end
