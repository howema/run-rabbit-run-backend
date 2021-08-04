class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :experiences, :experience_tags
  has_many :experience_tags
  has_many :experiences, through: :experience_tags
end
