class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :category
      t.string :type
      t.string :name
      t.float :price
      t.string :image
      t.string :description
      t.timestamps
    end
  end
end
