class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_thing, :email
  has_many :experiences
end
