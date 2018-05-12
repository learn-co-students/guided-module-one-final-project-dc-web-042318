class CreateAttractions < ActiveRecord::Migration[5.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :country_id
      t.integer :category_id
      t.boolean :meal_included
      t.boolean :family_friendly
      t.float :price
    end
  end
end
