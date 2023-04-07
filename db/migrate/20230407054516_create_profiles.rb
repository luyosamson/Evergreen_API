class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :store_name

      t.timestamps
    end
  end
end
