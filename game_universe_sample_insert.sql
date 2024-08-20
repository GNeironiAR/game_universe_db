-- Inserting into Races table
INSERT INTO Races (RaceName, Description) VALUES 
('Human', 'Versatile and adaptable race of Eldoria.'),
('Elf', 'Graceful and long-lived race with affinity for nature.'),
('Dwarf', 'Stout and skilled craftsmen of the mountains.'),
('Orc', 'Fierce and strong-willed warriors of Eldoria.'),
('Goblin', 'Cunning and resourceful inhabitants of caves and forests.');

-- Inserting into Locations table
INSERT INTO Locations (LocationName, Terrain, Population) VALUES 
('Eldoria City', 'Urban', 10000),
('Elderwood Forest', 'Forest', 5000),
('Dragonspire Mountains', 'Mountain', 3000),
('Sunset Plains', 'Plains', 8000),
('Mystic Isles', 'Island', 2000);

-- Inserting into Creatures table
INSERT INTO Creatures (CreatureName, Type, HabitatID) VALUES 
('Dragon', 'Legendary', 3),
('Direwolf', 'Beast', 2),
('Giant Spider', 'Insectoid', 2),
('Treant', 'Elemental', 2),
('Griffin', 'Mythical', 4);

-- Inserting into MagicSpells table
INSERT INTO MagicSpells (SpellName, Element, PowerLevel, Description) VALUES 
('Fireball', 'Fire', 5, 'Launches a powerful ball of fire.'),
('Healing Light', 'Light', 3, 'Heals wounds and ailments with radiant energy.'),
('Frost Nova', 'Ice', 4, 'Creates a freezing blast in all directions.'),
('Thunderbolt', 'Electricity', 5, 'Strikes enemies with a powerful lightning bolt.'),
('Earthquake', 'Earth', 5, 'Causes the ground to shake violently, damaging foes.');

-- Inserting into Quests table
INSERT INTO Quests (QuestName, Description, RewardAmount) VALUES 
('Defeat the Dragon', 'Slay the fearsome dragon terrorizing the countryside.', 500),
('Retrieve the Artifact', 'Recover a lost artifact hidden deep within the Mystic Isles.', 1000),
('Protect the Village', 'Defend the Sunset Plains village from orc raiders.', 300),
('Explore the Elderwood', 'Brave the dangers of the Elderwood Forest to uncover its secrets.', 200),
('Conquer the Goblin Lair', 'Clear out the goblin infestation in the Dragonspire Mountains.', 400);

-- Inserting into Characters table
INSERT INTO Characters (CharacterName, RaceID, Class) VALUES 
('Auron', 1, 'Warrior'),
('Lorien', 2, 'Mage'),
('Thorin', 3, 'Warrior'),
('Grom', 4, 'Warrior'),
('Sneaky Pete', 5, 'Rogue');

-- Inserting into CharacterQuests table
INSERT INTO CharacterQuests (CharacterID, QuestID, Completed) VALUES 
(1, 1, 1),
(2, 2, 0),
(3, 3, 1),
(4, 4, 0),
(5, 5, 1);

-- Inserting into Items table
INSERT INTO Items (ItemName, ItemType, Description, Value) VALUES 
('Sword of Flames', 'Weapon', 'A sword imbued with fiery magic.', 200),
('Staff of the Archmage', 'Weapon', 'A powerful staff capable of channeling immense magical energy.', 300),
('Dwarven Plate Armor', 'Armor', 'Heavy armor forged by skilled dwarven blacksmiths.', 250),
('Amulet of Healing', 'Accessory', 'An amulet that grants the wearer accelerated healing abilities.', 150),
('Potion of Invisibility', 'Consumable', 'A potion that renders the drinker invisible for a short duration.', 50);

-- Inserting into CharacterInventory table
INSERT INTO CharacterInventory (CharacterID, ItemID, Quantity) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 3);

-- Inserting into MagicalArtifacts table
INSERT INTO MagicalArtifacts (ArtifactName, Power, Description) VALUES 
('Crystal of Ages', '{"Power": "Time manipulation"}', 'An ancient crystal with the power to control time.'),
('Orb of Elements', '{"Power": "Elemental control"}', 'A mystical orb that grants mastery over the elements.'),
('Scepter of Light', '{"Power": "Divine energy"}', 'A divine scepter said to be blessed by the gods.'),
('Crown of Shadows', '{"Power": "Shadow manipulation"}', 'A dark crown with the power to command shadows.'),
('Chalice of Life', '{"Power": "Healing"}', 'A sacred chalice said to hold the essence of life itself.');

-- Inserting into CharacterSpells table
INSERT INTO CharacterSpells (CharacterID, SpellID) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserting into CharacterArtifacts table
INSERT INTO CharacterArtifacts (CharacterID, ArtifactID) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserting into CreatureLoot table
INSERT INTO CreatureLoot (CreatureID, ItemID, DropChance) VALUES 
(1, 1, 0.5),
(2, 2, 0.3),
(3, 3, 0.2),
(4, 4, 0.4),
(5, 5, 0.6);