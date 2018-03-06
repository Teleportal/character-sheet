class Skill < ApplicationRecord
  has_many :skill_tests
  has_many :character_pages, through: :skill_tests
  has_many :background_skills
  has_many :backgrounds, through: :background_skills
  has_many :class_skills
  has_many :klasses, through: :class_skills
end
