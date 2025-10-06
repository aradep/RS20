-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater Darkmoon NPC
-- -----------------------------------

-- Creature
SET
@Entry      = 482020,
@Model      = 14890,
@Scale      = 1,
@Name       = "Paris P. Ogilvie",
@Title      = "Antiquities Dealer",
@Icon       = "Buy", -- Directions, Gunner, vehicleCursor, Driver, Attack, Buy, Speak, Pickup, Interact, Trainer, Taxi, Repair, LootAll --
@Rank       = 1, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7, -- 0:None, 1:Beast, 2:Dragonkin, 3:Demon, 4:Elemental, 5:Giant, 6:Undead, 7:Humanoid, 8:Critter, 9:Mechanical --
@Class      = 1,
@Flags      = 131, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 20,
@Faction    = 1555;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Placement handled in SERVER_Content_AzsharaCrater.sql

-- Gossip
SET @text = 'Have you come across any Darkmoon Cards on your travels? If you manage to complete a full deck, come and see me.';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu` WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text` WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text` WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Extended costs
SET @HonorCoin_x200 = 2394; 

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`, `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Gems
(@Entry,    4,       @HonorCoin_x200,  40129), -- Sovereign Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40130), -- Shifting Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40131), -- Tenuous Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40132), -- Glowing Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40133), -- Purified Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40134), -- Royal Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40135), -- Mysterious Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40136), -- Balanced Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40137), -- Infused Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40138), -- Regal Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40139), -- Defender's Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40140), -- Puissant Dreadstone
(@Entry,    4,       @HonorCoin_x200,  40141), -- Guardian's Dreadstone
(@Entry,    5,       @HonorCoin_x200,  40164), -- Timeless Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40165), -- Jagged Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40166), -- Vivid Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40167), -- Enduring Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40168), -- Steady Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40169), -- Forceful Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40170), -- Seer's Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40171), -- Misty Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40172), -- Shining Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40173), -- Turbid Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40174), -- Intricate Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40175), -- Dazzling Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40176), -- Sundered Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40177), -- Lambent Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40178), -- Opaque Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40179), -- Energized Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40180), -- Radiant Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40181), -- Tense Eye of Zul
(@Entry,    5,       @HonorCoin_x200,  40182), -- Shattered Eye of Zul
(@Entry,    6,       @HonorCoin_x200,  40142), -- Inscribed Ametrine
(@Entry,    6,       @HonorCoin_x200,  40143), -- Etched Ametrine
(@Entry,    6,       @HonorCoin_x200,  40144), -- Champion's Ametrine
(@Entry,    6,       @HonorCoin_x200,  40145), -- Resplendent Ametrine
(@Entry,    6,       @HonorCoin_x200,  40146), -- Fierce Ametrine
(@Entry,    6,       @HonorCoin_x200,  40147), -- Deadly Ametrine
(@Entry,    6,       @HonorCoin_x200,  40148), -- Glinting Ametrine
(@Entry,    6,       @HonorCoin_x200,  40149), -- Lucent Ametrine
(@Entry,    6,       @HonorCoin_x200,  40150), -- Deft Ametrine
(@Entry,    6,       @HonorCoin_x200,  40151), -- Luminous Ametrine
(@Entry,    6,       @HonorCoin_x200,  40152), -- Potent Ametrine
(@Entry,    6,       @HonorCoin_x200,  40153), -- Veiled Ametrine
(@Entry,    6,       @HonorCoin_x200,  40154), -- Durable Ametrine
(@Entry,    6,       @HonorCoin_x200,  40155), -- Reckless Ametrine
(@Entry,    6,       @HonorCoin_x200,  40156), -- Wicked Ametrine
(@Entry,    6,       @HonorCoin_x200,  40157), -- Pristine Ametrine
(@Entry,    6,       @HonorCoin_x200,  40158), -- Empowered Ametrine
(@Entry,    6,       @HonorCoin_x200,  40159), -- Stark Ametrine
(@Entry,    6,       @HonorCoin_x200,  40160), -- Stalwart Ametrine
(@Entry,    6,       @HonorCoin_x200,  40161), -- Glimmering Ametrine
(@Entry,    6,       @HonorCoin_x200,  40162), -- Accurate Ametrine
(@Entry,    6,       @HonorCoin_x200,  40163); -- Resolute Ametrine
-- ----------------------------------------------------------------------------------------
