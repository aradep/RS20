-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater - Honor Coin vendor
-- -----------------------------------

-- Creature
SET
@Entry      = 482019,
@Model      = 27212,
@Scale      = 1,
@Name       = "Keeper Rhydian",
@Title      = "Honor Coin Trader",
@Icon       = "Buy",
@Rank       = 3,
@Type       = 7,
@Class      = 1,
@Flags      = 128,
@Level      = 20,
@Faction    = 2007;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Placement handled in SERVER_Content_AzsharaCrater.sql

-- Extended costs
SET
@HonorCoin_x30  = 2420,
@HonorCoin_x50  = 2422,
@HonorCoin_x70  = 2421,
@HonorCoin_x120 = 2396,
@HonorCoin_x200 = 2394; 

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`, `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Currency
(@Entry,     1,     @HonorCoin_x30,  45706), -- 2000 Honor Commendation
(@Entry,     1,     @HonorCoin_x30,  41888), -- Bag of 10x Emblem of Heroism
-- Armor
(@Entry,     2,     @HonorCoin_x70,    23173), -- Abomination Skin Leggings
(@Entry,     2,     @HonorCoin_x70,    34107), -- Tattered Shoulderpads
(@Entry,     2,     @HonorCoin_x70,    20427), -- Battle Healers Cloak
(@Entry,     2,     @HonorCoin_x70,    20428), -- Caretakers Cape
(@Entry,     2,     @HonorCoin_x70,     2041), -- Tunic of Westfall
(@Entry,     2,     @HonorCoin_x70,     7133), -- Brutal Hauberk
(@Entry,     2,     @HonorCoin_x70,     5943), -- Rift Bracers
(@Entry,     2,     @HonorCoin_x70,     6087), -- Chausses of Westfall
(@Entry,     2,     @HonorCoin_x70,     7002), -- Arctic Buckler
(@Entry,     2,     @HonorCoin_x70,     6414), -- Seal of Sylvanas
(@Entry,     2,     @HonorCoin_x70,    21568), -- Rune of Duty
(@Entry,     2,     @HonorCoin_x70,    21566), -- Rune of Perfection
(@Entry,     2,     @HonorCoin_x70,    20426), -- Advisors Ring
(@Entry,     2,     @HonorCoin_x70,    20429), -- Legionnaires Band
(@Entry,     2,     @HonorCoin_x70,    20431), -- Lorekeepers Ring
(@Entry,     2,     @HonorCoin_x70,    20439), -- Protectors Band
(@Entry,     2,     @HonorCoin_x70,    20442), -- Scouts Medallion
(@Entry,     2,     @HonorCoin_x70,    20444), -- Sentinels Medallion
-- Weapon
(@Entry,     3,     @HonorCoin_x120,     7001), -- Gravestone Scepter
(@Entry,     3,     @HonorCoin_x120,    25464), -- Blood-Tempered Sanseur
(@Entry,     3,     @HonorCoin_x120,    23171), -- The Axe of Severing
(@Entry,     3,     @HonorCoin_x120,     2042), -- Staff of Westfall
(@Entry,     3,     @HonorCoin_x120,     6504), -- Wingblade
(@Entry,     3,     @HonorCoin_x120,     6505), -- Crescent Staff
(@Entry,     3,     @HonorCoin_x120,    20425), -- Advisors Gnarled Staff
(@Entry,     3,     @HonorCoin_x120,    20434), -- Lorekeep ers Staff
(@Entry,     3,     @HonorCoin_x120,    20430), -- Legionnaires Sword
(@Entry,     3,     @HonorCoin_x120,    20440), -- Protectors Sword
(@Entry,     3,     @HonorCoin_x120,    20437), -- Outriders Bow
(@Entry,     3,     @HonorCoin_x120,    20438), -- Outrunners Bow
(@Entry,     3,     @HonorCoin_x120,    20441), -- Scouts Blade
(@Entry,     3,     @HonorCoin_x120,    20443), -- Sentinels Blade
(@Entry,     3,     @HonorCoin_x120,    22980), -- Staff of the Sun
(@Entry,     3,     @HonorCoin_x120,    22982), -- Farstriders Longbow
(@Entry,     3,     @HonorCoin_x120,    22984), -- Dawnblade
(@Entry,     3,     @HonorCoin_x120,    22995); -- Sindorei Warblade
-- ----------------------------------------------------------------------------------------

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
