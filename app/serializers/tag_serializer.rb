class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :experiences, through: :experience_tags
  has_many :experience_tags
end
