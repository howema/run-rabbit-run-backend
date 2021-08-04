class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtasks, :notes, :user_id, :tags, :experience_tags, :image

  has_many :experience_tags
  belongs_to :user
  has_many :tags, through: :experience_tags
end
