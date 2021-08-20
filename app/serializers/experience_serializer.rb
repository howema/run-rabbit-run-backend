class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtasks, :notes, :image, :user_id, :complete, :task1, :task2, :task3, :budget, :timeline, :travel_type, :task1a, :task1b, :task1c, :task2a, :task2b, :task2c, :task3a, :task3b, :task3c

  has_many :experience_tags
  belongs_to :user
  has_many :tags, through: :experience_tags
end
