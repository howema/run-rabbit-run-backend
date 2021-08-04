class Experience < ApplicationRecord
  has_many :experience_tags
  belongs_to :user
  has_many :tags, through: :experience_tags
end
