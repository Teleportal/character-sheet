json.id character_page.id
json.user do
  json.id character_page.user.id
  json.name character_page.user.name
  json.email character_page.user.email
end
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
json.initiative character_page.initiative
if character_page.skill_tests.present?
  json.skills do
    json.array! character_page.skill_tests, partial: 'skill_test', as: :skill_test
  end 
  json.passive_perception character_page.passive_perception
end
json.saves character_page.saving_throws
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
  json.partial! character_page.background, partial: 'backgrounds/background', as: :background
end
json.klass do
  json.partial! character_page.klass, partial: 'klasses/klass', as: :klass
end
json.speed character_page.speed
json.hit_dice character_page.hit_dice

json.backstory character_page.backstory
json.inventory character_page.inventory
json.notes character_page.notes

json.features_and_traits character_page.features_and_traits
