class Flower < ApplicationRecord
validates :seller, presence: true

 belongs_to :seller
 has_many :orders
 has_many :users, through: :orders
end

#    create_table :sellers do |t|
#       t.string :name
#       t.string :password_digest
#       t.string :email
#       t.string :username
#       t.string :store_name

#       t.timestamps

                    # create_table :flowers do |t|
                    #   t.belongs_to :seller, null: false, foreign_key: true
                    #   t.string :product_type
                    #   t.string :name
                    #   t.float :price
                    #   t.string :image
                    #   t.boolean :inStock, default: true
                    #   t.string :description

    #  create_table :orders do |t|

    #   t.belongs_to :user, null: false, foreign_key: true
    #   t.belongs_to :flower, null: true, foreign_key: true
    #   t.belongs_to :plant,  null: true, foreign_key: true
    #   t.integer :quantity
    #   t.float :price


                #   def change
                # create_table :users do |t|
                #   t.string :name
                #   t.string :password_digest
                #   t.string :email
                #   t.string :username

                #   t.timestamps

    # def change
    # create_table :profiles do |t|
    #   t.belongs_to :user, null: false, foreign_key: true
    #   t.string :name
    #   t.string :email
    #   t.string :username
      

    #   t.timestamps

                    #   def change
                    # create_table :sellerprofiles do |t|
                    #   t.belongs_to :seller, null: false, foreign_key: true
                    #   t.string :name
                    #   t.string :email
                    #   t.string :username
                    #   t.string :store_name

                    #   t.timestamps