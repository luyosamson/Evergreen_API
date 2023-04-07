class Plant < ApplicationRecord
    belongs_to :seller
    has_many :orders
    has_many :users, through: :orders

    
end
