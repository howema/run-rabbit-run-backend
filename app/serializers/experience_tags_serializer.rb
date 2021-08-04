class ExperienceTagsSerializer < ActiveModel::Serializer
  attributes :id, :experience_id, :tag_id
  belongs_to: :experience
  belongs_to: :tag
end
