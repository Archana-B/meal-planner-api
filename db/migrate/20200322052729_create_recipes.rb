class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :meal_type

      t.timestamps
    end

    create_join_table :recipes, :ingredients do |t|
      t.index :recipe_id
      t.index :ingredient_id
    end
  end
end
