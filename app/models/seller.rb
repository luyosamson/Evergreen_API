class Seller < ApplicationRecord
    has_secure_password
      validates :email, uniqueness: true
      validates :store_name, uniqueness: true

      validates :password,
            presence: true,
            length: {
              minimum: 8,
              maximum: 16
            },
            confirmation: true,
            format: {
              with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}\z/,
              message:
                "must include at least one lowercase letter, one uppercase letter, one digit and have minimum 8 characters"
            }

    has_many :plants
    has_many :flowers
    has_one :sellerprofile
end
