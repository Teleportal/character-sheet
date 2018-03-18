json.id klass.id
json.name klass.name
json.hit_die klass.hit_die
json.save_1 klass.save_1
json.save_2 klass.save_2
json.number_of_skills klass.number_of_skills
json.skills do
  json.array! klass.skills, partial: 'skills/skill', as: :skill
end