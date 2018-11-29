class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :size, :color
  has_one :user
end
