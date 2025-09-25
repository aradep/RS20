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
@Entry      = 482011,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Cloth Armor",
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
(@Entry,    1,          2553,             1486), -- Tree Bark Jacket
(@Entry,    1,          2553,             5202), -- Corsair's Overshirt
(@Entry,    2,          2553,             12987), -- Darkweave Breeches
(@Entry,    2,          2553,             23173), -- Abomination Skin Leggings
(@Entry,    3,          2553,             4320), -- Spidersilk Boots
(@Entry,    4,          2553,             1974), -- Mindthrust Bracers
(@Entry,    5,          2553,             5195), -- Gold-flecked Gloves
(@Entry,    5,          2553,             5970), -- Serpent Gloves
(@Entry,    5,          2553,             12977), -- Magefist Gloves
(@Entry,    6,          2553,             12998), -- Magician's Mantle
(@Entry,    6,          2553,             34107), -- Tattered Shoulderpads
(@Entry,    6,          2553,             39894), -- Darkcloth Shoulders
(@Entry,    7,          2553,             2292), -- Necrology Robes
(@Entry,    7,          2553,             6226), -- Bloody Apron
(@Entry,    7,          2553,             6465), -- Robe of the Moccasin
(@Entry,    8,          2553,             2059), -- Sentry Cloak
(@Entry,    8,          2553,             5193), -- Cape of the Brotherhood
(@Entry,    8,          2553,             6449), -- Glowing Lizardscale Cloak
(@Entry,    8,          2553,             6629), -- Sporid Cape
(@Entry,    8,          2553,             6632), -- Feyscale Cloak
(@Entry,    8,          2553,             12979), -- Firebane Cloak
(@Entry,    8,          2553,             20427), -- Battle Healer's Cloak
(@Entry,    8,          2553,             20428), -- Caretaker's Cape
(@Entry,    8,          2553,             22990), -- Tranquillien Champion's Cloak
(@Entry,    8,          2553,             45626), -- Spidersilk Drape
(@Entry,    8,          2553,             51994); -- Tumultuous Cloak

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
