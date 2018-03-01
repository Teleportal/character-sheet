class Background < ApplicationRecord
  has_many :character_pages
  has_many :background_skills
  has_many :skills, through: :background_skills
end
