#Ability Score Modifiers
Modifier.create(ability: "strength", offset: 1) #id: 1
Modifier.create(ability: "strength", offset: 2) #id: 2
Modifier.create(ability: "dexterity", offset: 1) #id: 3
Modifier.create(ability: "dexterity", offset: 2) #id: 4
Modifier.create(ability: "constitution", offset: 1) #id: 5
Modifier.create(ability: "constitution", offset: 2) #id: 6
Modifier.create(ability: "intelligence", offset: 1) #id: 7
Modifier.create(ability: "intelligence", offset: 2) #id: 8
Modifier.create(ability: "wisdom", offset: 1) #id: 9
Modifier.create(ability: "wisdom", offset: 2) #id: 10
Modifier.create(ability: "charisma", offset: 1) #id: 11
Modifier.create(ability: "charisma", offset: 2) #id: 12



# Dwarf Traits

Feature.create(classifiable_id: 1, classifiable_type: "Race", name: "Darkvision", description: "Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray.", level_requirement: 0)
Feature.create(classifiable_id: 1, classifiable_type: "Race", modifier_id: 6, name: "Ability Score Increase", description: "Your Constitution score increases by 2.", level_requirement: 0)
Feature.create(classifiable_id: 1, classifiable_type: "Race", name: "Dwarven Resilience", description: "You have advantage on saving throws against poison, and you have resistance against poison damage.", level_requirement: 0)
Feature.create(classifiable_id: 1, classifiable_type: "Race", name: "Dwarven Combat Training", description: "You have proficiency with the battleaxe, handaxe, light hammer, and warhammer.", level_requirement: 0)
Feature.create(classifiable_id: 1, classifiable_type: "Race", name: "Tool Proficiency", description: "You gain proficiency with the artisan’s tools of your choice: smith’s tools, brewer’s supplies, or mason’s tools.", level_requirement: 0)
Feature.create(classifiable_id: 1, classifiable_type: "Race", name: "Stonecunning", description: "Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus.", level_requirement: 0)
Feature.create(classifiable_id: 1, classifiable_type: "Race", name: "Stonecunning", description: "Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus.", level_requirement: 0)

# Hill Dwarf Traits
Feature.create(classifiable_id: 1, classifiable_type: "Subrace", modifier_id: 9, name: "Ability Score Increase", description: "Your Wisdom score increases by 1.", level_requirement: 0)
Modifier.create(ability: "hit_points", offset: 1) #id: 13
Feature.create(classifiable_id: 1, classifiable_type: "Subrace", modifier_id: 13, name: "Dwarven Toughness", description: "Your hit point maximum increases by 1, and it increases by 1 every time you gain a level.", level_requirement: 0)
#Mountain Dwarf Traits
Feature.create(classifiable_id: 2, classifiable_type: "Subrace", modifier_id: 2, name: "Ability Score Increase", description: "Your Strength score increases by 2.")
Feature.create(classifiable_id: 2, classifiable_type: "Subrace", name: "Dwarven Armor Training", description: "You have proficiency with light and medium armor.")

#Elf Traits

Feature.create(classifiable_id: 2, classifiable_type: "Race", modifier_id: 4, name: "Ability Score Increase", description: "Your Dexterity score increases by 2.", level_requirement: 0)
Feature.create(classifiable_id: 2, classifiable_type: "Race", name: "Darkvision", description: "Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.", level_requirement: 0)
Feature.create(classifiable_id: 2, classifiable_type: "Race", name: "Keen Senses", description: "You have proficiency in the Perception skill.", level_requirement: 0)
Feature.create(classifiable_id: 2, classifiable_type: "Race", name: "Fey Ancestry", description: "You have advantage on saving throws against being charmed, and magic can’t put you to sleep.", level_requirement: 0)
Feature.create(classifiable_id: 2, classifiable_type: "Race", name: "Trance", description: "Elves don’t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.", level_requirement: 0)

#High Elf Traits
Feature.create(classifiable_id: 3, classifiable_type: "Subrace", modifier_id: 7, name: "Ability Score Increase", description: "Your Intelligence score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 3, classifiable_type: "Subrace", name: "Elf Weapon Training", description: "You have proficiency with the longsword, shortsword, shortbow, and longbow.", level_requirement: 0)
Feature.create(classifiable_id: 3, classifiable_type: "Subrace", name: "Cantrip", description: "You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it.", level_requirement: 0)
Feature.create(classifiable_id: 3, classifiable_type: "Subrace", name: "Extra Language", description: "You can speak, read, and write one extra language of your choice.", level_requirement: 0)
#Wood Elf Traits
Feature.create(classifiable_id: 4, classifiable_type: "Subrace", modifier_id: 9, name: "Ability Score Increase", description: "Your Wisdom score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Subrace", name: "Elf Weapon Training", description: "You have proficiency with the longsword, shortsword, shortbow, and longbow.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Subrace", name: "Fleet of Foot", description: "Your base walking speed increases to 35 feet.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Subrace", name: "Mask of the Wild", description: "You can attempt to hide even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena.", level_requirement: 0)
#Dark Elf Traits
Feature.create(classifiable_id: 5, classifiable_type: "Subrace", modifier_id: 11, name: "Ability Score Increase", description: "Your Charisma score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Subrace", name: "Superior Darkvision", description: "Your darkvision has a radius of 120 feet.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Subrace", name: "Sunlight Sensitivity", description: "You have disadvantage on attack rolls and on Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Subrace", name: "Drow Magic", description: "You know the dancing lights cantrip. When you reach 3rd level, you can cast the faerie fire spell once per day. When you reach 5th level, you can also cast the darkness spell once per day. Charisma is your spellcasting ability for these spells.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Subrace", name: "Drow Weapon Training", description: "You have proficiency with rapiers, shortswords, and hand crossbows.", level_requirement: 0)


# Halfling Traits

Feature.create(classifiable_id: 3, classifiable_type: "Race", modifier_id: 4, name: "Ability Score Increase", description: "Your Dexterity score increases by 2.", level_requirement: 0)
Feature.create(classifiable_id: 3, classifiable_type: "Race", name: "Lucky", description: "When you roll a 1 on the d20 for an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll.", level_requirement: 0)
Feature.create(classifiable_id: 3, classifiable_type: "Race", name: "Brave", description: "You have advantage on saving throws against being frightened.", level_requirement: 0)
Feature.create(classifiable_id: 3, classifiable_type: "Race", name: "Halfling Nimbleness", description: "You can move through the space of any creature that is of a size larger than yours.", level_requirement: 0)

#Lightfoot Traits
Feature.create(classifiable_id: 6, classifiable_type: "Subrace", modifier_id: 11, name: "Ability Score Increase", description: "Your Charisma score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 6, classifiable_type: "Subrace", name: "Naturally Stealthy", description: "You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you.", level_requirement: 0)
#Stout Traits
Feature.create(classifiable_id: 7, classifiable_type: "Subrace", modifier_id: 5, name: "Ability Score Increase", description: "Your Constitution score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 7, classifiable_type: "Subrace", name: "Stout Resilience", description: "You have advanctage on saving throws against poiso, and you have resistance against poison damage.", level_requirement: 0)


# Human Traits
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 1, name: "Ability Score Increase (str)", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 3, name: "Ability Score Increase (dex)", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 5, name: "Ability Score Increase (con)", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 7, name: "Ability Score Increase (int)", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 9, name: "Ability Score Increase (wis)", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 11, name: "Ability Score Increase (cha)", description: "Your ability scores each increase by 1.", level_requirement: 0)


# Dragonborn Traits

Feature.create(classifiable_id: 5, classifiable_type: "Race", modifier_id: 2, name: "Ability Score Increase (str)", description: "Your Strength score increases by 2...", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Race", modifier_id: 2, name: "Ability Score Increase (cha)", description: "...and your Charisma score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Race", name: "Draconic Ancestry", description: "You have draconic ancestry. Choose one type of dragon from the Draconic Ancestry table. Your breath weapon and damage resistance are determined by the dragon type.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Race", name: "Breath Weapon", description: "You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation. When you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your draconic ancestry. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level. After you use your breath weapon, you can’t use it again until you complete a short or long rest.", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Race" name: "Damage Resistance", description: "You have resistance to the damage type associated with your draconic ancestry.", level_requirement: 0)


# Gnome Traits

Feature.create(classifiable_id: 6, classifiable_type: "Race", modifier_id: 8, name: "Ability Score Increase", description: "Your Intelligence score increases by 2.", level_requirement: 0)
Feature.create(classifiable_id: 6, classifiable_type: "Race", name: "Darkvision", description: "Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.", level_requirement: 0)
Feature.create(classifiable_id: 6, classifiable_type: "Race", name: "Gnome Cunning", description: "You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.", level_requirement: 0)

#Forest Gnome Traits
Feature.create(classifiable_id: 8, classifiable_type: "Subrace", modifier_id: 3, name: "Ability Score Increase", description: "Your Dexterity score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 8, classifiable_type: "Subrace", name: "Natural Illusionist", description: "You know the minor illusion cantrip. Intelligence is your spellcasting ability for it.", level_requirement: 0)
Feature.create(classifiable_id: 8, classifiable_type: "Subrace", name: "Speak with Small Beasts", description: "Through sounds and gestures, you can communicate simple ideas with Small or smallers beasts. Forest gnomes love animals and often keep squirrels, badgers, rabbits, moles, woodpeckers, and other creatures as beloved pets.", level_requirement: 0)
#Rock Gnome Traits
Feature.create(classifiable_id: 9, classifiable_type: "Subrace", modifier_id: 5, name: "Ability Score Increase", description: "Your Constitution score increases by 1." level_requirement: 0)
Feature.create(classifiable_id: 9, classifiable_type: "Subrace", name: "Artificer's Lore", description: "Whenever you make an Intelligence (History) check related to magic items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonus you normally apply." level_requirement: 0)
Feature.create(classifiable_id: 9, classifiable_type: "Subrace", name: "Tinker", description: "You have proficiency with artisan’s tools (tinker’s tools). Using those tools, you can spend 1 hour and 10 gp worth of materials to construct a Tiny clockwork device (AC 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materials used to create it. You can have up to three such devices active at a time." level_requirement: 0)


# Half-Elf Traits
Feature.create(classifiable_id: 7, classifiable_type: "Race", modifier_id: 12, name: "Ability Score Increase", description: "Your Charisma score increases by 2", level_requirement: 0)
Feature.create(classifiable_id: 7, classifiable_type: "Race", name: "Ability Score Increase", description: "Two other ability scores of your choice increase by 1", level_requirement: 0) #Gonna need to make some controller actions for this, I think
Feature.create(classifiable_id: 7, classifiable_type: "Race", name: "Darkvision", description: "Thanks to your elf blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.", level_requirement: 0)
Feature.create(classifiable_id: 7, classifiable_type: "Race", name: "Fey Ancestry", description: "You have advantage on saving throws against being charmed, and magic can’t put you to sleep.", level_requirement: 0)
Feature.create(classifiable_id: 7, classifiable_type: "Race", name: "Skill Versatility", description: "You gain proficiency in two skills of your choice.", level_requirement: 0) #FUCK I NEED TO HARDCODE SO MUCH STUFF FOR HALF-ELVES


# Half-Orc Traits
Feature.create(classifiable_id: 8, classifiable_type: "Race", modifier_id: 2, name: "Ability Score Increase", description: "Your Strength score increases by 2...", level_requirement: 0)
Feature.create(classifiable_id: 8, classifiable_type: "Race", modifier_id: 5, name: "Ability Score Increase", description: "...and your Constitution score increases by 1.", level_requirement: 0)
Feature.create(classifiable_id: 8, classifiable_type: "Race", name: "Darkvision", description: "Thanks to your orc blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.", level_requirement: 0)
Feature.create(classifiable_id: 8, classifiable_type: "Race", name: "Menacing", description: "You gain proficiency in the Intimidation skill.", level_requirement: 0) #Have to hard code this too...
Feature.create(classifiable_id: 8, classifiable_type: "Race", name: "Relentless Endurance", description: "When you are reduced to 0 hit points but not killed outright, you can drop to 1 hit point instead. You can’t use this feature again until you finish a long rest.", level_requirement: 0)
Feature.create(classifiable_id: 8, classifiable_type: "Race", name: "Savage Attacks", description: "When you score a critical hit with a melee weapon attack, you can roll one of the weapon’s damage dice one additional time and add it to the extra damage of the critical hit.", level_requirement: 0)


# Tiefling Traits


