-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Food and Potions
-- -----------------------------------

-- Creature
SET
@Entry      = 482004,
@Model      = 23732,
@Scale      = 1.5,
@Name       = "Spirit of Competition",
@Title      = "Consumables",
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

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1982.71, -443.895, 11.2727, 2.46222, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,     `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,     1,            0,              43087), -- Elwynn Apple
(@Entry,     2,            0,              42431), -- Dalaran Brownie
(@Entry,     3,            0,              13810), -- Eversong Sunfruit
(@Entry,     4,            0,              42434), -- Strawberry Cheesecake
(@Entry,     5,            0,              11950), -- Tirisfal Grapes
(@Entry,     6,            0,              22895), -- Cinnamon Bun
(@Entry,     7,            0,               4538), -- Hillsbrad Watermelon
(@Entry,     8,            0,              42430), -- Frosted Doughnut
(@Entry,     9,            0,               4537), -- Kezan Banana
(@Entry,    10,            0,              42428), -- Vanilla Cupcake
(@Entry,    11,            0,                929),  -- Healing Potion
(@Entry,    12,            0,               3827), -- Mana Potion
(@Entry,    13,            0,               7676), -- Thistle Tea
(@Entry,    14,            0,               5631), -- Rage Potion
(@Entry,    15,         2985,               2459), -- Swiftness Potion
(@Entry,    16,         2985,               5634), -- Free Action Potion
(@Entry,    17,         2985,               6048), -- Shadow Protection Potion
(@Entry,    18,         2985,               6051), -- Holy Protection Potion
(@Entry,    18,         2985,               1450), -- Potion of Fervor
(@Entry,    18,         2985,               3384), -- Minor Magic Resistance Potion
(@Entry,    19,         2985,               3391), -- Elixir of Ogre's Strength
(@Entry,    19,         2985,               6662), -- Elixir of Giant Growth
(@Entry,    19,         2985,               3390), -- Elixir of Lesser Agility
(@Entry,    19,         2985,              45621), -- Elixir of Minor Accuracy
(@Entry,    19,         2985,               6373), -- Elixir of Firepower
(@Entry,    19,         2985,               3383), -- Elixir of Wisdom
(@Entry,    19,         2985,               3389), -- Elixir of Defense
(@Entry,    19,         2985,               3825), -- Elixir of Fortitude
(@Entry,    19,         2985,               3388), -- Strong Troll's Blood Elixir
(@Entry,    19,         2985,               5996); -- Elixir of Water Breathing
