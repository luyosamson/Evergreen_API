class User < ApplicationRecord
    has_one :profile
    has_many :orders
    has_many :flowers, through: :orders
    has_many :plants, through: :orders
end
