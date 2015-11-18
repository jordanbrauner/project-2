class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
    end
  end
end
