-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Well-fed food
-- -----------------------------------

-- Creature
SET
@Entry      = 482003,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Cloth Armor",
@Icon       = "Buy", -- Buy/Repair --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7,
@Class      = 1,
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 80,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,          0,                43087), -- Elwynn Apple
(@Entry,    1,          0,                13810), -- Eversong Sunfruit
(@Entry,    1,          0,                11950), -- Tirisfal Grapes
(@Entry,    1,          0,                 4538), -- Hillsbrad Watermelon
(@Entry,    1,          0,                 4537), -- Kezan Banana
(@Entry,    2,          0,                42430), -- Frosted Doughnut
(@Entry,    2           0,                22895), -- Cinnamon Bun
(@Entry,    2,          0,                42428), -- Vanilla Cupcake
(@Entry,    2,          0,                42431), -- Dalaran Brownie
(@Entry,    2,          0,                42433); -- Chocolate Cheesecake

-- Food
UPDATE item_template SET `requiredlevel` = 0, `bonding` = 0, `buycount` = 20, `stackable` = 20, `buyprice` = 0, `sellprice` = 0, `itemlevel` = 25, `flags` = 0, `requiredreputationfaction` = 0, `requiredreputationrank` = 0 WHERE `entry` IN (43087,13810,11950,4538,4537,42430,22895,42428,42431,42433);
UPDATE item_template SET `name`= 'Elwynn Apple',              `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 43087;
UPDATE item_template SET `name`= 'Eversong Sunfruit',         `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 13810;
UPDATE item_template SET `name`= 'Tirisfal Grapes',           `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 11950;
UPDATE item_template SET `name`= 'Hillsbrad Watermelon',      `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 4538;
UPDATE item_template SET `name`= 'Kezan Banana',              `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 4537;
UPDATE item_template SET `name`= 'Frosted Doughnut',          `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 42430;
UPDATE item_template SET `name`= 'Cinnamon Bun',              `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 22895;
UPDATE item_template SET `name`= 'Vanilla Cupcake',           `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 42428;
UPDATE item_template SET `name`= 'Dalaran Brownie',           `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 42431;
UPDATE item_template SET `name`= 'Chocolate Cheesecake',      `spellid_1`= 64354, `buyprice`=0, `sellprice`=1 WHERE `entry`= 42433;
