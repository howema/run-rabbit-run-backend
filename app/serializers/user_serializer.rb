class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite_thing, :email, :user_id
  # has_many :experiences
end
