class User < ApplicationRecord
      has_secure_password

    validates :email, uniqueness: true
   
    
    has_one :profile
    has_many :orders
    has_many :flowers, through: :orders
    has_many :plants, through: :orders
end
