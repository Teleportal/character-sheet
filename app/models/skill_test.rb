class SkillTest < ApplicationRecord
  belongs_to :character_page
  belongs_to :skill

  def calculate_bonus
    skill_ability = self.skill.ability
    if skill_ability == "strength"
      if proficient
        self.bonus = self.character_page.str_mod + self.character_page.proficiency_bonus
      else
        self.bonus = self.character_page.str_mod
      end
    elsif skill_ability == "dexterity"
      if proficient
        self.bonus = self.character_page.dex_mod + self.character_page.proficiency_bonus
      else
        self.bonus = self.character_page.dex_mod
      end
    elsif skill_ability == "constitution"
      if proficient
        self.bonus = self.character_page.con_mod + self.character_page.proficiency_bonus
      else
        self.bonus = self.character_page.con_mod
      end
    elsif skill_ability == "intelligence"
      if proficient
        self.bonus = self.character_page.int_mod + self.character_page.proficiency_bonus
      else
        self.bonus = self.character_page.int_mod
      end
    elsif skill_ability == "wisdom"
      if proficient
        self.bonus = self.character_page.wis_mod + self.character_page.proficiency_bonus
      else
        self.bonus = self.character_page.wis_mod
      end
    elsif skill_ability == "charisma"
      if proficient
        self.bonus = self.character_page.cha_mod + self.character_page.proficiency_bonus
      else
        self.bonus = self.character_page.cha_mod
      end
    end
  end

end