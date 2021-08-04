class Experience < ApplicationRecord
  has_many :experience_tags
  has_many :tags, through: :experience_tags
  belongs_to :user
end
