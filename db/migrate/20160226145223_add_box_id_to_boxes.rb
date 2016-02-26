class AddBoxIdToBoxes < ActiveRecord::Migration
  def change
    add_column :boxes, :box_id, :integer
  end
end
