class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.belongs_to :seller, null: false, foreign_key: true
      t.string :product_type
      t.string :name
      t.float :price
      t.string :image
      t.string :description
      t.boolean :inStock
      t.timestamps
    end
  end
end
