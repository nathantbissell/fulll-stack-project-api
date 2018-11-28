# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples, dependent: :destroy
  has_many :shoes, dependent: :destroy
end
