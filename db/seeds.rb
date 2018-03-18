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


# RACES (and subraces)

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
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 1, name: "Ability Score Increase", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 3, name: "Ability Score Increase", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 5, name: "Ability Score Increase", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 7, name: "Ability Score Increase", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 9, name: "Ability Score Increase", description: "Your ability scores each increase by 1.", level_requirement: 0)
Feature.create(classifiable_id: 4, classifiable_type: "Race", modifier_id: 11, name: "Ability Score Increase", description: "Your ability scores each increase by 1.", level_requirement: 0)


# Dragonborn Traits

Feature.create(classifiable_id: 5, classifiable_type: "Race", modifier_id: 2, name: "Ability Score Increase", description: "Your Strength score increases by 2...", level_requirement: 0)
Feature.create(classifiable_id: 5, classifiable_type: "Race", modifier_id: 2, name: "Ability Score Increase", description: "...and your Charisma score increases by 1.", level_requirement: 0)
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
Feature.create(classifiable_id: 9, classifiable_type: "Race", modifier_id: 7, name: "Ability Score Increase", description: "Your Intelligence score increases by 1...", level_requirement: 0)
Feature.create(classifiable_id: 9, classifiable_type: "Race", modifier_id: 12, name: "Ability Score Increase", description: "...and your Charisma score increases by 2", level_requirement: 0)
Feature.create(classifiable_id: 9, classifiable_type: "Race", name: "Darkvision", description: "Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.", level_requirement: 0)
Feature.create(classifiable_id: 9, classifiable_type: "Race", name: "Hellish Resistance", description: "You have resistance to fire damage.", level_requirement: 0)
Feature.create(classifiable_id: 9, classifiable_type: "Race", name: "Infernal Legacy", description: "You know the thaumaturgy cantrip. When you reach 3rd level, you can cast the hellish rebuke spell as a 2nd-level spell once with this trait and regain the ability to do so when you finish a long rest. When you reach 5th level, you can cast the darkness spell once with this trait and regain the ability to do so when you finish a long rest. Charisma is your spellcasting ability for these spells.", level_requirement: 0)



# CLASSES

# Barbarian Features

Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Armor Proficiencies", description: "Light armor, medium armor, shields", level_requirement: 1)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Weapon Proficiencies", description: "Simple weapons, martial weapons", level_requirement: 1)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Rage", description: "In battle, you fight with primal ferocity. On your turn, you can enter a rage as a bonus action. While raging, you gain the following benefits if you aren’t wearing heavy armor: 
You have advantage on Strength checks and Strength saving throws.
When you make a melee weapon attack using Strength, you gain a bonus to the damage roll that increases as you gain levels as a barbarian, as shown in the Rage Damage column of the Barbarian table.
You have resistance to bludgeoning, piercing, and slashing damage.
If you are able to cast spells, you can’t cast them or concentrate on them while raging.
Your rage lasts for 1 minute. It ends early if you are knocked unconscious or if your turn ends and you haven’t attacked a hostile creature since your last turn or taken damage since then. You can also end your rage on your turn as a bonus action. Once you have raged the number of times shown for your barbarian level in the Rages column of the Barbarian table, you must finish a long rest before you can rage again.", level_requirement: 1)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Unarmored Defense", description: "While you are not wearing any armor, your Armor Class equals 10 + your Dexterity modifier + your Constitution modifier. You can use a shield and still gain this benefit.", level_requirement: 1)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Reckless Attack", description: "Starting at 2nd level, you can throw aside all concern for defense to attack with fierce desperation. When you make your first attack on your turn, you can decide to attack recklessly. Doing so gives you advantage on melee weapon attack rolls using Strength during this turn, but attack rolls against you have advantage until your next turn.", level_requirement: 2)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Danger Sense", description: "At 2nd level, you gain an uncanny sense of when things nearby aren’t as they should be, giving you an edge when you dodge away from danger. You have advantage on Dexterity saving throws against effects that you can see, such as traps and spells. To gain this benefit, you can’t be blinded, deafened, or incapacitated.", level_requirement: 2)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Primal Path", description: "At 3rd level, you choose a path that shapes the nature of your rage. Choose the Path of the Berserker or the Path of the Totem Warrior. Your choice grants you features at 3rd level, and again at 6th, 10th, and 14th levels.", level_requirement: 3)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Ability Score Improvement", description: "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can’t increase an ability score above 20 using this feature.", level_requirement: 4)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Extra Attack", description: "Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.", level_requirement: 5)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Fast Movement", description: "Starting at 5th level, your speed increases by 10 feet while you aren’t wearing heavy armor.", level_requirement: 5)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Feral Instincts", description: "By 7th level, your instincts are so honed that you have advantage on initiative rolls. Additionally, if you are surprised at the beginning of combat and aren’t incapacitated, you can act normally on your first turn, but only if you enter your rage before doing anything else on that turn.", level_requirement: 7)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Brutal Critical", description: "Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack. This increases to two additional dice at 13th level and three additional dice at 17th level.", level_requirement: 9)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Relentless Rage", description: "Starting at 11th level, your rage can keep you fighting despite grievous wounds. If you drop to 0 hit points while you’re raging and don’t die outright, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead. Each time you use this feature after the first, the DC increases by 5. When you finish a short or long rest, the DC resets to 10.", level_requirement: 11)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Persistent Rage", description: "Beginning at 15th level, your rage is so fierce that it ends early only if you fall unconscious or if you choose to end it.", level_requirement: 15)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Indomitable Might", description: "Beginning at 18th level, if your total for a Strength check is less than your Strength score, you can use that score in place of the total.", level_requirement: 18)
Feature.create(classifiable_id: 1, classifiable_type: "Klass", name: "Primal Champion", description: "At 20th level, you embody the power of the wilds. Your Strength and Constitution scores increase by 4. Your maximum for those scores is now 24.", level_requirement: 20)


# Bard Features

Feaure.create(classifiable_id: 2, classifiable_type: "Klass", name: "Armor Proficiencies", description: "Light armor", level_requirement: 1)
Feaure.create(classifiable_id: 2, classifiable_type: "Klass", name: "Weapon Proficiencies", description: "Simple weapons, hand crossbows, longswords, rapiers, shortswords", level_requirement: 1)
Feaure.create(classifiable_id: 2, classifiable_type: "Klass", name: "Tool Proficiencies", description: "Three musical instruments of your choice", level_requirement: 1)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Spellcasting", description: "You have learned to untangle and reshape the fabric of reality in harmony with your wishes and music. Your spells are part of your vast repertoire, magic that you can tune to different situations.", level_requirement: 1)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Bardic Inspiration", description: "You can inspire others through stirring words or music. To do so, you use a bonus action on your turn to choose one creature other than yourself within 60 feet of you who can hear you. That creature gains one Bardic Inspiration die, a d6. Once within the next 10 minutes, the creature can roll the die and add the number rolled to one ability check, attack roll, or saving throw it makes. The creature can wait until after it rolls the d20 before deciding to use the Bardic Inspiration die, but must decide before the GM says whether the roll succeeds or fails. Once the Bardic Inspiration die is rolled, it is lost. A creature can have only one Bardic Inspiration die at a time. You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain any expended uses when you finish a long rest. Your Bardic Inspiration die changes when you reach certain levels in this class. The die becomes a d8 at 5th level, a d10 at 10th level, and a d12 at 15th level.", level_requirement: 1)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Jack of All Trades", description: "Starting at 2nd level, you can add half your proficiency bonus, rounded down, to any ability check you make that doesn’t already include your proficiency bonus.", level_requirement: 2) #Yeah gonna have to code this one in.
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Song of Rest", description: "Beginning at 2nd level, you can use soothing music or oration to help revitalize your wounded allies during a short rest. If you or any friendly creatures who can hear your performance regain hit points at the end of the short rest by spending one or more Hit Dice, each of those creatures regains an extra 1d6 hit points. The extra hit points increase when you reach certain levels in this class: to 1d8 at 9th level, to 1d10 at 13th level, and to 1d12 at 17th level.", level_requirement: 2)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Bard College", description: "At 3rd level, you delve into the advanced techniques of a Bardic College. Your choice grants you features at 3rd level and again at 6th and 14th level.", level_requirement: 3)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Expertise", description: "At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies. At 10th level, you can choose another two skill proficiencies to gain this benefit.", level_requirement: 3) # >:[
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Ability Score Improvement", description: "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can’t increase an ability score above 20 using this feature.", level_requirement: 4)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Font of Inspiration", description: "Beginning when you reach 5th level, you regain all of your expended uses of Bardic Inspiration when you finish a short or long rest.", level_requirement: 5)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Countercharm", description: "At 6th level, you gain the ability to use musical notes or words of power to disrupt mind-influencing effects. As an action, you can start a performance that lasts until the end of your next turn. During that time, you and any friendly creatures within 30 feet of you have advantage on saving throws against being frightened or charmed. A creature must be able to hear you to gain this benefit. The performance ends early if you are incapacitated or silenced or if you voluntarily end it (no action required).", level_requirement: 6)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Magical Secrets", description: "By 10th level, you have plundered magical knowledge from a wide spectrum of disciplines. Choose two spells from any class, including this one. A spell you choose must be of a level you can cast, as shown on the Bard table, or a cantrip. The chosen spells count as bard spells for you and are included in the number in the Spells Known column of the Bard table. You learn two additional spells from any class at 14th level and again at 18th level.", level_requirement: 10)
Feature.create(classifiable_id: 2, classifiable_type: "Klass", name: "Superior Inspiration", description: "At 20th level, when you roll initiative and have no uses of Bardic Inspiration left, you regain one use.", level_requirement: 10)


# Cleric Features

Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Armor Proficiencies", description: "Light armor, medium armor, shields", level_requirement: 1)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Weapon Proficiencies", description: "Simple weapons", level_requirement: 1)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Spellcasting", description: "As a conduit for divine power, you can cast cleric spells.", level_requirement: 1)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Divine Domain", description: "Choose one domain related to your deity. Your chosen domain grants you domain spells and other features when you choose it at 1st level. It also grants you additional ways to use Channel Divinity when you gain that feature at 2nd level, and additional benefits at 6th, 8th, and 17th levels.", level_requirement: 1)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Channel Divinity", description: "At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description. When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again. Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC. Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.", level_requirement: 2)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Ability Score Improvement", description: "When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can’t increase an ability score above 20 using this feature.", level_requirement: 4)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Destroy Undead", description: "Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Destroy Undead table.", level_requirement: 5)
Feature.create(classifiable_id: 3, classifiable_type: "Klass", name: "Divine Intervention", description: "Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great. Imploring your deity’s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The GM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can’t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest. At 20th level, your call for intervention succeeds automatically, no roll required.", level_requirement: 10)



# Druid Features

Feature.create(classifiable_id: 4, classifiable_type: "Klass", name: "Armor Proficiencies", description: "Light armor, medium armor, shields (druids will not wear armor or use shields made of metal", level_requirement: 1)
Feature.create(classifiable_id: 4, classifiable_type: "Klass", name: "Weapon Proficiencies", description: "Clubs, daggers, darts, javelins, maces, quarterstaffs, scimitars, sickles, slings, spears", level_requirement: 1)
Feature.create(classifiable_id: 4, classifiable_type: "Klass", name: "Tool Proficiencies", description: "Herbalism kit", level_requirement: 1)

# Fighter Features

# Monk Features

# Paladin Features

# Ranger Features

# Rogue Features

# Sorceror Features

# Warlock Features

# Wizard Features

