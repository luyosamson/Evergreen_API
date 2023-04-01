class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.bigint :user_id, null: false
      t.bigint :product_id, null: false
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
