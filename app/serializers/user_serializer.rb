# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :size, :fav_brand, :fav_color
end
