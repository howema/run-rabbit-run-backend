class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtasks, :notes, :image, :user_id, :complete

  has_many :experience_tags
  belongs_to :user
  has_many :tags, through: :experience_tags
end
