class Klass < ApplicationRecord
  has_many :character_pages
  has_many :features, :as => :classifiable
  has_many :class_skills
  has_many :skills, through: :class_skills
  
  enum save_1: { strength: 1, dexterity: 2, constitution: 3, intelligence: 4, wisdom: 5, charisma: 6 }
  enum save_2: { str: 1, dex: 2, con: 3, int: 4, wis: 5, cha: 6 }
end
