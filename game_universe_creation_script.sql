-- Create table for races
CREATE TABLE Races (
    RaceID INTEGER PRIMARY KEY,
    RaceName TEXT NOT NULL,
    Description TEXT
);

-- Create table for locations
CREATE TABLE Locations (
    LocationID INTEGER PRIMARY KEY,
    LocationName TEXT NOT NULL,
    Terrain TEXT,
    Population INTEGER
);

-- Create table for creatures
CREATE TABLE Creatures (
    CreatureID INTEGER PRIMARY KEY,
    CreatureName TEXT NOT NULL,
    Type TEXT,
    HabitatID INTEGER,
    FOREIGN KEY (HabitatID) REFERENCES Locations(LocationID)
);

-- Create table for magic spells
CREATE TABLE MagicSpells (
    SpellID INTEGER PRIMARY KEY,
    SpellName TEXT NOT NULL,
    Element TEXT,
    PowerLevel INTEGER,
    Description TEXT
);

-- Create table for quests
CREATE TABLE Quests (
    QuestID INTEGER PRIMARY KEY,
    QuestName TEXT NOT NULL,
    Description TEXT,
    RewardAmount REAL
);

-- Create table for characters
CREATE TABLE Characters (
    CharacterID INTEGER PRIMARY KEY,
    CharacterName TEXT NOT NULL,
    RaceID INTEGER,
    Class TEXT,
    TimestampCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (RaceID) REFERENCES Races(RaceID)
);

-- Create table for character quests (many-to-many relationship)
CREATE TABLE CharacterQuests (
    CharacterID INTEGER,
    QuestID INTEGER,
    Completed BOOLEAN,
    TimestampStarted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CharacterID) REFERENCES Characters(CharacterID),
    FOREIGN KEY (QuestID) REFERENCES Quests(QuestID),
    PRIMARY KEY (CharacterID, QuestID)
);

-- Create table for items
CREATE TABLE Items (
    ItemID INTEGER PRIMARY KEY,
    ItemName TEXT NOT NULL,
    ItemType TEXT,
    Description TEXT,
    Value REAL
);

-- Create table for character inventory (many-to-many relationship)
CREATE TABLE CharacterInventory (
    CharacterID INTEGER,
    ItemID INTEGER,
    Quantity INTEGER,
    FOREIGN KEY (CharacterID) REFERENCES Characters(CharacterID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID),
    PRIMARY KEY (CharacterID, ItemID)
);

-- Create table for magical artifacts
CREATE TABLE MagicalArtifacts (
    ArtifactID INTEGER PRIMARY KEY,
    ArtifactName TEXT NOT NULL,
    Power JSON,
    Description TEXT
);

-- Create table for creature loot (many-to-many relationship)
CREATE TABLE CreatureLoot (
    CreatureID INTEGER,
    ItemID INTEGER,
    DropChance REAL,
    FOREIGN KEY (CreatureID) REFERENCES Creatures(CreatureID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID),
    PRIMARY KEY (CreatureID, ItemID)
);

-- Create table for character spells (many-to-many relationship)
CREATE TABLE CharacterSpells (
    CharacterID INTEGER,
    SpellID INTEGER,
    FOREIGN KEY (CharacterID) REFERENCES Characters(CharacterID),
    FOREIGN KEY (SpellID) REFERENCES MagicSpells(SpellID),
    PRIMARY KEY (CharacterID, SpellID)
);

-- Create table for character artifacts (many-to-many relationship)
CREATE TABLE CharacterArtifacts (
    CharacterID INTEGER,
    ArtifactID INTEGER,
    FOREIGN KEY (CharacterID) REFERENCES Characters(CharacterID),
    FOREIGN KEY (ArtifactID) REFERENCES MagicalArtifacts(ArtifactID),
    PRIMARY KEY (CharacterID, ArtifactID)
);
