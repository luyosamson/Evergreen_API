class CreateFeatureds < ActiveRecord::Migration[7.0]
  def change
    create_table :featureds do |t|
      t.string :name,price,image

      t.timestamps
    end
  end
end
