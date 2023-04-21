class Flower < ApplicationRecord
validates :seller, presence: true

 belongs_to :seller
 has_many :orders
 has_many :users, through: :orders
end
