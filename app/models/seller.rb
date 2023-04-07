class Seller < ApplicationRecord
    has_many :flowers
    has_many :plants
    has_one :sellerprofile
end
