class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :username, :size, :fav_brand
end
