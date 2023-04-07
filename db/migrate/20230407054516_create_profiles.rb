class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :username
      

      t.timestamps
    end
  end
end
