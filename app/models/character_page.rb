class CharacterPage < ApplicationRecord
  belongs_to :user
  has_many :skill_tests
  has_many :skills, through: :skill_tests
  belongs_to :background
  belongs_to :klass
  belongs_to :race

  validates :strength, numericality: { only_integer: true, greather_than: 0 }
  validates :dexterity, numericality: { only_integer: true, greather_than: 0 }
  validates :constitution, numericality: { only_integer: true, greather_than: 0 }
  validates :intelligence, numericality: { only_integer: true, greather_than: 0 }
  validates :wisdom, numericality: { only_integer: true, greather_than: 0 }
  validates :charisma, numericality: { only_integer: true, greather_than: 0 }
  validates :level, numericality: { only_integer: true, greather_than_or_equal_to: 1 }
  validates_associated :race
  validates_associated :background
  validates_associated :klass
  validates :money, presence: true
  validates :alignment, format: { with: /([LNC][GNE]|N)/ }

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

  def melee_attack_bonus
    str_mod + proficiency_bonus
  end

  def ranged_attack_bonus
    dex_mod + proficiency_bonus
  end

  def calculate_armor_class
    self.armor_class = 10 + dex_mod
  end

  def speed
    self.race.speed
  end

  def calculate_hit_points
    if level == 1
      self.hit_points =  self.klass.hit_die + con_mod
    else
      self.hit_points =  self.klass.hit_die + con_mod + (((self.klass.hit_die / 2) + con_mod) * (level - 1))
    end
  end

  def level_up
    level += 1
    calculate_hit_points
  end

  # def features_and_traits
  #   features_array = []
  #   race.features.each do |feature|
  #     if feature.modifier_id == nil
  #       features_array << [feature.classifiable, feature.name, feature.description, feature.level_requirement]
  #     else
  #       features_array << [feature.classifiable, feature.name, feature.description, feature.modifier, feature.level_requirement]
  #     end
  #   end
  #   if subrace
  #     subrace.features.each do |feature|
  #       if feature.modifier_id == nil
  #         features_array << [feature.classifiable, feature.name, feature.description, feature.level_requirement]
  #       else
  #         features_array << [feature.classifiable, feature.name, feature.description, feature.modifier, feature.level_requirement]
  #       end
  #     end
  #   end


  #   klass.features.each do |feature|
  #     if feature.modifier_id == nil
  #       features_array << [feature.classifiable, feature.name, feature.description, feature.level_requirement]
  #     else
  #       features_array << [feature.classifiable, feature.name, feature.description, feature.modifier, feature.level_requirement]
  #     end
  #   end 

  #   return features_array
  # end

  # def race_check
  #   num_increases = race.features.where(name = "Ability Score Increase").length
  #   if race.subraces



  # end

end
