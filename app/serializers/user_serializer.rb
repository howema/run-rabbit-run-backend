class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_thing, :email
end
