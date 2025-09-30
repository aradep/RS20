-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater - Honor Coin vendor
-- -----------------------------------

-- Creature
SET
@Entry      = 482018,
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

-- Placement handled in CRATER_Creatures.sql

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
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Currency
(@Entry,    2,          @HonorCoin_x50,   45706), -- 2000 Honor Commendation
(@Entry,    2,          @HonorCoin_x50,   41888); -- Bag of 40x Dream Shards
-- Gems
(@Entry,    4,          @HonorCoin_x200,  40129), -- Sovereign Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40130), -- Shifting Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40131), -- Tenuous Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40132), -- Glowing Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40133), -- Purified Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40134), -- Royal Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40135), -- Mysterious Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40136), -- Balanced Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40137), -- Infused Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40138), -- Regal Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40139), -- Defender's Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40140), -- Puissant Dreadstone
(@Entry,    4,          @HonorCoin_x200,  40141), -- Guardian's Dreadstone
(@Entry,    5,          @HonorCoin_x200,  40164), -- Timeless Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40165), -- Jagged Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40166), -- Vivid Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40167), -- Enduring Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40168), -- Steady Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40169), -- Forceful Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40170), -- Seer's Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40171), -- Misty Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40172), -- Shining Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40173), -- Turbid Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40174), -- Intricate Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40175), -- Dazzling Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40176), -- Sundered Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40177), -- Lambent Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40178), -- Opaque Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40179), -- Energized Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40180), -- Radiant Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40181), -- Tense Eye of Zul
(@Entry,    5,          @HonorCoin_x200,  40182), -- Shattered Eye of Zul
(@Entry,    6,          @HonorCoin_x200,  40142), -- Inscribed Ametrine
(@Entry,    6,          @HonorCoin_x200,  40143), -- Etched Ametrine
(@Entry,    6,          @HonorCoin_x200,  40144), -- Champion's Ametrine
(@Entry,    6,          @HonorCoin_x200,  40145), -- Resplendent Ametrine
(@Entry,    6,          @HonorCoin_x200,  40146), -- Fierce Ametrine
(@Entry,    6,          @HonorCoin_x200,  40147), -- Deadly Ametrine
(@Entry,    6,          @HonorCoin_x200,  40148), -- Glinting Ametrine
(@Entry,    6,          @HonorCoin_x200,  40149), -- Lucent Ametrine
(@Entry,    6,          @HonorCoin_x200,  40150), -- Deft Ametrine
(@Entry,    6,          @HonorCoin_x200,  40151), -- Luminous Ametrine
(@Entry,    6,          @HonorCoin_x200,  40152), -- Potent Ametrine
(@Entry,    6,          @HonorCoin_x200,  40153), -- Veiled Ametrine
(@Entry,    6,          @HonorCoin_x200,  40154), -- Durable Ametrine
(@Entry,    6,          @HonorCoin_x200,  40155), -- Reckless Ametrine
(@Entry,    6,          @HonorCoin_x200,  40156), -- Wicked Ametrine
(@Entry,    6,          @HonorCoin_x200,  40157), -- Pristine Ametrine
(@Entry,    6,          @HonorCoin_x200,  40158), -- Empowered Ametrine
(@Entry,    6,          @HonorCoin_x200,  40159), -- Stark Ametrine
(@Entry,    6,          @HonorCoin_x200,  40160), -- Stalwart Ametrine
(@Entry,    6,          @HonorCoin_x200,  40161), -- Glimmering Ametrine
(@Entry,    6,          @HonorCoin_x200,  40162), -- Accurate Ametrine
(@Entry,    6,          @HonorCoin_x200,  40163); -- Resolute Ametrine
-- ----------------------------------------------------------------------------------------

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
