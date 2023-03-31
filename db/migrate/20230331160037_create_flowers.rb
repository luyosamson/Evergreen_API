class CreateFlowers < ActiveRecord::Migration[7.0]
  def change
    create_table :flowers do |t|
      t.string :type
      t.string :name
      t.float :price
      t.string :image
      t.string :description
      
      t.timestamps
    end
  end
end
