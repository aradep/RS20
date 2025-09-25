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
@Entry      = 482014,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Jewellery",
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
(@Entry,    1,         2553,             20426), -- Advisor's Ring
(@Entry,    1,         2553,             12996), -- Band of Purification
(@Entry,    1,         2553,             6332), -- Black Pearl Ring
(@Entry,    1,         2553,             30804), -- Bronze Band of Force
(@Entry,    1,         2553,             1156), -- Lavishly Jeweled Ring
(@Entry,    1,         2553,             20429), -- Legionnaire's Band
(@Entry,    1,         2553,             20431), -- Lorekeeper's Ring
(@Entry,    1,         2553,             20439), -- Protector's Band
(@Entry,    1,         2553,             12985), -- Ring of Defense
(@Entry,    1,         2553,             1491), -- Ring of Precision
(@Entry,    2,         2553,             20442), -- Scout's Medallion
(@Entry,    2,         2553,             20444), -- Sentinel's Medallion
(@Entry,    3,         2553,             21568), -- Rune of Duty
(@Entry,    3,         2553,             21566); -- Rune of Perfection

-- Reduce prices to buy 0 / sell 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` = @Entry;
