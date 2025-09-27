-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Food and Potions
-- -----------------------------------

-- Creature
SET
@Entry      = 482004,
@Model      = 23732,
@Scale      = 1.5,
@Name       = "Vendor",
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

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,     `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,     1,            0,              43087), -- Elwynn Apple
(@Entry,     2,            0,              42431), -- Dalaran Brownie
(@Entry,     3,            0,              13810), -- Eversong Sunfruit
(@Entry,     4,            0,              42433), -- Chocolate Cheesecake
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
(@Entry,    15,         2985,               5634), -- Free Action Potion
(@Entry,    15,         2985,               6048), -- Shadow Protection Potion
(@Entry,    15,         2985,               6051), -- Holy Protection Potion
(@Entry,    15,         2985,               1450), -- Potion of Fervor
(@Entry,    15,         2985,               3384), -- Minor Magic Resistance Potion
(@Entry,    16,         2985,               3391), -- Elixir of Ogre's Strength
(@Entry,    16,         2985,               6662), -- Elixir of Giant Growth
(@Entry,    16,         2985,               3390), -- Elixir of Lesser Agility
(@Entry,    16,         2985,              45621), -- Elixir of Minor Accuracy
(@Entry,    16,         2985,               6373), -- Elixir of Firepower
(@Entry,    16,         2985,               3383), -- Elixir of Wisdom
(@Entry,    16,         2985,               3389), -- Elixir of Defense
(@Entry,    16,         2985,               3825), -- Elixir of Fortitude
(@Entry,    16,         2985,               3388), -- Strong Troll's Blood Elixir
(@Entry,    16,         2985,               5996); -- Elixir of Water Breathing

-- Food
UPDATE `item_template` SET `requiredlevel` = 0, `bonding` = 0, `buycount` = 20, `stackable` = 20, `buyprice` = 0, `sellprice` = 0, `itemlevel` = 25, `flags` = 0, `requiredreputationfaction` = 0, `requiredreputationrank` = 0 WHERE `entry` IN (43087,13810,11950,4538,4537,42430,22895,42428,42431,42433);
UPDATE `item_template` SET `name`= 'Elwynn Apple',         `spellid_1`= 65422 WHERE `entry`= 43087;
UPDATE `item_template` SET `name`= 'Eversong Sunfruit',    `spellid_1`= 65421 WHERE `entry`= 13810;
UPDATE `item_template` SET `name`= 'Tirisfal Grapes',      `spellid_1`= 65420 WHERE `entry`= 11950;
UPDATE `item_template` SET `name`= 'Hillsbrad Watermelon', `spellid_1`= 65419 WHERE `entry`= 4538;
UPDATE `item_template` SET `name`= 'Kezan Banana',         `spellid_1`= 65418 WHERE `entry`= 4537;
UPDATE `item_template` SET `name`= 'Frosted Doughnut',     `spellid_1`= 65419 WHERE `entry`= 42430;
UPDATE `item_template` SET `name`= 'Cinnamon Bun',         `spellid_1`= 65420 WHERE `entry`= 22895;
UPDATE `item_template` SET `name`= 'Vanilla Cupcake',      `spellid_1`= 65418 WHERE `entry`= 42428;
UPDATE `item_template` SET `name`= 'Dalaran Brownie',      `spellid_1`= 65422 WHERE `entry`= 42431;
UPDATE `item_template` SET `name`= 'Chocolate Cake',       `spellid_1`= 65421 WHERE `entry`= 42433;

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1982.71, -443.895, 11.2727, 2.46222, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');
