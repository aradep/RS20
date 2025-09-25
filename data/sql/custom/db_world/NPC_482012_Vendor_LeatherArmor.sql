-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Cloth armor
-- -----------------------------------

-- Creature
SET
@Entry      = 482012,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Leather Armor",
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

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,          2553,             1489), -- Gloomshroud Armor
(@Entry,    1,          2553,             2041), -- Tunic of Westfall
(@Entry,    1,          2553,             2314), -- Toughened Leather Armor
(@Entry,    1,          2553,             6473), -- Armor of the Fang
(@Entry,    1,          2553,             6642), -- Phantom Armor
(@Entry,    1,          2553,             6907), -- Tortoise Armor
(@Entry,    1,          2553,             10399), -- Blackened Defias Armor
(@Entry,    1,          2553,             12988), -- Starsight Tunic
(@Entry,    2,          2553,             5199), -- Smelting Pants
(@Entry,    2,          2553,             6087), -- Chausses of Westfall
(@Entry,    2,          2553,             10410), -- Leggings of the Fang
(@Entry,    3,          2553,             1121), -- Feet of the Lynx
(@Entry,    3,          2553,             6459), -- Savage Trodders
(@Entry,    3,          2553,             7187), -- VanCleef's Boots
(@Entry,    3,          2553,             10411), -- Footpads of the Fang
(@Entry,    3,          2553,             12982), -- Silver-linked Footguards
(@Entry,    4,          2553,             5943), -- Rift Bracers
(@Entry,    4,          2553,             12999), -- Drakewing Bands
(@Entry,    5,          2553,             7348), -- Fletcher's Gloves
(@Entry,    5,          2553,             12994), -- Thorbia's Gauntlets
(@Entry,    6,          2553,             5404), -- Serpent's Shoulders
(@Entry,    6,          2553,             39895), -- Cloaked Shoulderpads
(@Entry,    6,          2553,             39897); -- Azure Shoulderguards

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
