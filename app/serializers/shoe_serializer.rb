class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :size, :color
end
