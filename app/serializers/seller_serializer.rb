class SellerSerializer < ActiveModel::Serializer
  attributes :id,:name,:email,:username,:store_name
  has_many :flowers, serializer: SellerflowerSerializer
  has_many :plants, serializer: SellerplantSerializer
  has_one :sellerprofile
end


  