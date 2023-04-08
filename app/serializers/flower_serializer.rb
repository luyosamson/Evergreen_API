class FlowerSerializer < ActiveModel::Serializer
  attributes :id,:flower_type,:name,:price,:image,:inStock,:description
end
