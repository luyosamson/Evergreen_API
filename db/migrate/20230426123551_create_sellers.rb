class CreateSellers < ActiveRecord::Migration[7.0]
  def change
     drop_table :sellers if table_exists?(:sellers)
    create_table :sellers do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :store_name
      t.string :username

      t.timestamps
    end
  end
end

