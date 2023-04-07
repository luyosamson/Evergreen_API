class Order < ApplicationRecord
    belongs_to :user
    belongs_to :flower
    belongs_to :plant
end
