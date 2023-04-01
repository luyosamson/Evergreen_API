class Seller < ApplicationRecord
 has_many :plants
 has_many :flowers
 has_one :profile
   
end
