class CreateSellerprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :sellerprofiles do |t|
      t.belongs_to :seller, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :username
      t.string :store_name

      t.timestamps
    end
  end
end
