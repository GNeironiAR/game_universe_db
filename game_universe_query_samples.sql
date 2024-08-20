-- Get all characters of a certain race:

SELECT *
FROM Characters
WHERE RaceID = (SELECT RaceID FROM Races WHERE RaceName = 'Human');


-- Get the name and description of all quests completed by a specific character:

SELECT Quests.QuestName, Quests.Description
FROM Quests
JOIN CharacterQuests ON Quests.QuestID = CharacterQuests.QuestID
WHERE CharacterQuests.CharacterID = 1 AND CharacterQuests.Completed = 1;

-- Obtain all fire spells of level 3 or higher:
SELECT *
FROM MagicSpells
WHERE Element = 'Fire' AND PowerLevel >= 3;

-- Common Table Expression (CTE) - Get a character's inventory along with item names and descriptions:
WITH CharacterInventoryDetails AS (
    SELECT CI.CharacterID, CI.ItemID, CI.Quantity, Items.ItemName, Items.Description
    FROM CharacterInventory CI
    JOIN Items ON CI.ItemID = Items.ItemID
    WHERE CI.CharacterID = 1
)
SELECT *
FROM CharacterInventoryDetails;