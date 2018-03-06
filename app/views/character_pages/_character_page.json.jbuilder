json.id character_page.id
json.user character_page.user
json.name character_page.name
json.hit_points character_page.hit_points
json.armor_class character_page.armor_class
json.strength character_page.strength
json.str character_page.str_mod
json.dexterity character_page.dexterity
json.dex character_page.dex_mod
json.constitution character_page.constitution
json.con character_page.con_mod
json.intelligence character_page.intelligence
json.int character_page.int_mod
json.wisdom character_page.wisdom
json.wis character_page.wis_mod
json.charisma character_page.charisma
json.cha character_page.cha_mod
json.level character_page.level
json.proficiency_bonus character_page.proficiency_bonus
if character_page.skill_tests.present?
  json.skills character_page.skill_tests.each do |skill_test|
    json.name skill_test.skill.name
    json.ability skill_test.skill.ability
    json.bonus skill_test.bonus
  end
  json.passive_perception character_page.passive_perception
end
json.alignment character_page.alignment
json.personality character_page.personality
json.ideals character_page.ideals
json.bonds character_page.bonds
json.flaws character_page.flaws
json.money character_page.money
json.race do 
  json.id character_page.race.id
  json.name character_page.race.name
end
json.background do
  json.id character_page.background.id
  json.name character_page.background.name
  json.features character_page.background.features_array
  json.skills character_page.background.skills.each do |skill|
    json.id skill.id
    json.name skill.name
    json.ability skill.ability
  end
end
json.klass do
  json.id character_page.klass.id
  json.name character_page.klass.name
  json.hit_die character_page.klass.hit_die
  json.save_1 character_page.klass.save_1
  json.save_2 character_page.klass.save_2
  json.number_of_skills character_page.klass.number_of_skills
    json.skills character_page.klass.skills.each do |skill|
    json.id skill.id
    json.name skill.name
    json.ability skill.ability
  end
end
json.speed character_page.race.speed
