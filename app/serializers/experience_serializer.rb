class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtasks, :notes, :tags, :experience_tags

  has_many :tags, through: :experience_tags
  has_many :user_experiences
  has_many :experience_tags
end
