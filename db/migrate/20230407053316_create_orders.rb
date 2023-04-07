class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|

      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :flower, null: false, foreign_key: true
      t.belongs_to :plant,  null: false, foreign_key: true
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
