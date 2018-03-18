json.id background.id
json.name background.name
json.features background.features_array
json.skills do
  json.array! background.skills, partial: 'skills/skill', as: :skill
end