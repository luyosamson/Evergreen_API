class FlowerSerializer < ActiveModel::Serializer
  attributes :id,:product_type,:name,:price,:image,:inStock,:description
  belongs_to :seller
end
