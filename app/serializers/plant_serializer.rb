class PlantSerializer < ActiveModel::Serializer
  attributes :id,:plant_type,:name,:price,:image,:inStock,:description
  belongs_to :seller
end
