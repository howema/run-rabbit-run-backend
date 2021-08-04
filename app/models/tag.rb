class Tag < ApplicationRecord
  has_many :experience_tags
  has_many :experiences, through: :experience_tags
end
