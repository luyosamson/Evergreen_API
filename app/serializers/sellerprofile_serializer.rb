class SellerprofileSerializer < ActiveModel::Serializer
  attributes :name,:email,:username,:store_name
  belongs_to :seller
end
 