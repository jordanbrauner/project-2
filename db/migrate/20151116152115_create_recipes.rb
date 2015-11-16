class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :photo_url
      t.string :ingredients
      t.string :directions
      t.references :user, index:true, foreign_key: true
    end
  end
end
