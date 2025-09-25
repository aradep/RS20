-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Shirts and Tabards
-- -----------------------------------

-- Creature
SET
@Entry      = 482010,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Style Specialist",
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
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    2,          0,              42360),
(@Entry,    2,          0,              42361),
(@Entry,    2,          0,              42363),
(@Entry,    2,          0,              42365),
(@Entry,    2,          0,              42368),
(@Entry,    2,          0,              42369),
(@Entry,    2,          0,              42370),
(@Entry,    2,          0,              42371),
(@Entry,    2,          0,              42372),
(@Entry,    2,          0,              42373),
(@Entry,    2,          0,              42374),
(@Entry,    2,          0,              42375),
(@Entry,    2,          0,              42376),
(@Entry,    2,          0,              42377),
(@Entry,    2,          0,              42378),
(@Entry,    2,          0,              45664),
(@Entry,    2,          0,              45666),
(@Entry,    2,          0,              45667),
(@Entry,    2,          0,              45668),
(@Entry,    2,          0,              45669),
(@Entry,    2,          0,              45670),
(@Entry,    2,          0,              45671),
(@Entry,    2,          0,              45672),
(@Entry,    2,          0,              45673),
(@Entry,    2,          0,              45674);

-- Reduce prices to buy 0 / sell 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` = @Entry;
