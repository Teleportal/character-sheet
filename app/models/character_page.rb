class CharacterPage < ApplicationRecord
  belongs_to :user
  has_many :skill_tests
  has_many :skills, through: :skill_tests
  belongs_to :background

  def modifier(ability)
    return (ability - 10) / 2
  end

  def str_mod
    modifier(strength)
  end

  def dex_mod
    modifier(dexterity)
  end

  def con_mod
    modifier(constitution)
  end

  def int_mod
    modifier(intelligence)
  end

  def wis_mod
    modifier(wisdom)
  end

  def cha_mod
    modifier(charisma)
  end

  def proficiency_bonus
    if level % 4 == 0
      return (level / 4) + 1
    else
      return (level / 4) + 2
    end
  end

  def passive_perception
    perception = skill_tests.find_by(skill_id: 12).bonus #should be perception
    10 + perception
  end

  def initiative
    dex_mod
  end

  def calculate_armor_class
    10 + dex_mod
  end

  def calculate_hit_points
    #need hit die, so need class
  end

end
