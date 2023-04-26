class CreateFlowers < ActiveRecord::Migration[7.0]
  def change
     drop_table :flowers if table_exists?(:flowers)
    create_table :flowers do |t|
      t.belongs_to :seller, null: false, foreign_key: true
      t.string :product_type
      t.string :name
      t.float :price
      t.string :image
      t.boolean :inStock, default: true
      t.string :description

      t.timestamps
    end
  end
end
