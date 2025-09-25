-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Enchants
-- -----------------------------------

-- Creature
SET
@Entry      = 482004,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Potions and Elixirs",
@Icon       = "Buy", -- Buy/Repair --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7,
@Class      = 1,
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 20,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,     `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,     1,         0,                  929),  -- Healing Potion
(@Entry,     2,         0,                  3827), -- Mana Potion
(@Entry,     3,         0,                  7676), -- Thistle Tea
(@Entry,     4,         0,                  5631), -- Rage Potion
(@Entry,     5,         2985,               2459), -- Swiftness Potion
(@Entry,     5,         2985,               5634), -- Free Action Potion
(@Entry,     5,         2985,               6048), -- Shadow Protection Potion
(@Entry,     5,         2985,               6051), -- Holy Protection Potion
(@Entry,     5,         2985,               1450), -- Potion of Fervor
(@Entry,     5,         2985,               6372), -- Swim Speed Potion
(@Entry,     5,         2985,               3384), -- Minor Magic Resistance Potion
(@Entry,     1,         2985,               3391), -- Elixir of Ogre's Strength
(@Entry,     2,         2985,               6662), -- Elixir of Giant Growth
(@Entry,     3,         2985,               3390), -- Elixir of Lesser Agility
(@Entry,     4,         2985,               45621),-- Elixir of Minor Accuracy
(@Entry,     5,         2985,               6373), -- Elixir of Firepower
(@Entry,     6,         2985,               3383), -- Elixir of Wisdom
(@Entry,     7,         2985,               3389), -- Elixir of Defense
(@Entry,     8,         2985,               3825), -- Elixir of Fortitude
(@Entry,     9,         2985,               3388), -- Strong Troll's Blood Elixir
(@Entry,    10,         2985,               5996); -- Elixir of Water Breathing