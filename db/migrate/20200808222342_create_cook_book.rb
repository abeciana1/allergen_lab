class CreateCookBook < ActiveRecord::Migration[6.0]
  def change
    create_table :cook_books do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
    end
  end
end
