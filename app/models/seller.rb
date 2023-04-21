class Seller < ApplicationRecord
    has_secure_password

    has_many :plants
    has_many :flowers
    has_one :sellerprofile
end
