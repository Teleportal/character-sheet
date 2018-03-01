class Skill < ApplicationRecord
  has_many :skill_tests
  has_many :character_pages, through: :skill_tests
  has_many :background_skills
  has_many :backgrounds, through: :background_skills
end
