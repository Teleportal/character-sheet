SkillTest.create(skill_id: 1, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 2, character_page_id: 3, proficient: true)
SkillTest.create(skill_id: 3, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 4, character_page_id: 3, proficient: true)
SkillTest.create(skill_id: 5, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 6, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 7, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 8, character_page_id: 3, proficient: true)
SkillTest.create(skill_id: 9, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 10, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 11, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 12, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 13, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 14, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 15, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 16, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 17, character_page_id: 3, proficient: false)
SkillTest.create(skill_id: 18, character_page_id: 3, proficient: true)

skills = SkillTest.where(character_page_id: 3)

skills.each do |skill|
  skill.calculate_bonus
  skill.save
end