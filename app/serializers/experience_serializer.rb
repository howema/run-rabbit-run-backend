class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtasks, :notes, :user_id

  has_many :experience_tags
  has_many :tags, through: :experience_tags
  belongs_to :user
end
