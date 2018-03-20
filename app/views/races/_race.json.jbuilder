json.id race.id
json.name race.name
json.speed race.speed
json.traits race.features
if race.subraces != []
  json.subraces race.subraces.each do |subrace|
    json.id subrace.id
    json.name subrace.name
    json.traits subrace.features
  end
end