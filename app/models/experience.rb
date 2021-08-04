class Experience < ApplicationRecord
  has_many :tags, through: :experience_tags
  has_many :user_experiences
  has_many :experience_tags
end
