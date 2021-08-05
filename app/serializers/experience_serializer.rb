class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtasks, :notes, :tags, :experience_tags, :image, :user_id

  has_many :experience_tags
  belongs_to :user
  has_many :tags, through: :experience_tags
end
