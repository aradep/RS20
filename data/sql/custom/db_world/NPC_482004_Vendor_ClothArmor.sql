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
@Entry      = 482004,
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
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE CreatureID = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,          0,              33447), -- Runic Healing Potion --
(@Entry,    2,          0,              33448), -- Runic Mana Potion --
(@Entry,    3,          0,              40087), -- Powerful Rejuvenation Potion --
(@Entry,    4,          0,              40077), -- Crazy Alchemist's Potion --
(@Entry,    4,          0,              40081), -- Potion of Nightmares --
(@Entry,    4,          0,              40093), -- Indestructible Potion --
(@Entry,    4,          0,              40211), -- Potion of Speed --
(@Entry,    4,          0,              40212), -- Potion of Wild Magic --
(@Entry,    6,          0,               9172), -- Invisibility Potion --
(@Entry,    6,          0,               2459), -- Swiftness Potion --
(@Entry,    6,          0,               6372), -- Swim Speed Potion --
(@Entry,    6,          0,               7676), -- Thistle Tea --
(@Entry,    6,          0,              13442), -- Mighty Rage Potion --
(@Entry,    6,          0,               5634), -- Free Action Potion --
(@Entry,    6,          0,              20008); -- Living Action Potion --

-- Reduce prices to buy 0 / sell 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` = @Entry;
