-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Gems
-- -----------------------------------

-- Creature
SET
@Entry      = 482002,
@Model      = 27216,
@Scale      = 1,
@Name       = "Vendor NPC",
@Title      = "Priceless Gems",
@Icon       = "Buy", -- Directions, Gunner, vehicleCursor, Driver, Attack, Buy, Speak, Pickup, Interact, Trainer, Taxi, Repair, LootAll --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7, -- 0:None, 1:Beast, 2:Dragonkin, 3:Demon, 4:Elemental, 5:Giant, 6:Undead, 7:Humanoid, 8:Critter, 9:Mechanical --
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 23,
@Class      = 1,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Gems
UPDATE `item_template` SET `buyprice` = 1000000, `flags` = 4096 WHERE `class` = 3 AND `itemLevel` = 80 AND `sellprice` = 90000;

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,     `Slot`,   `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,      0,         40111), -- Bold Cardinal Ruby
(@Entry,    1,      0,         40112), -- Delicate Cardinal Ruby
(@Entry,    1,      0,         40113), -- Runed Cardinal Ruby
(@Entry,    1,      0,         40114), -- Bright Cardinal Ruby
(@Entry,    1,      0,         40115), -- Subtle Cardinal Ruby
(@Entry,    1,      0,         40116), -- Flashing Cardinal Ruby
(@Entry,    1,      0,         40117), -- Fractured Cardinal Ruby
(@Entry,    1,      0,         40118), -- Precise Cardinal Ruby
(@Entry,    2,      0,         40119), -- Solid Majestic Zircon
(@Entry,    2,      0,         40120), -- Sparkling Majestic Zircon
(@Entry,    2,      0,         40121), -- Lustrous Majestic Zircon
(@Entry,    2,      0,         40122), -- Stormy Majestic Zircon
(@Entry,    3,      0,         40123), -- Brilliant King's Amber
(@Entry,    3,      0,         40124), -- Smooth King's Amber
(@Entry,    3,      0,         40125), -- Rigid King's Amber
(@Entry,    3,      0,         40126), -- Thick King's Amber
(@Entry,    3,      0,         40127), -- Mystic King's Amber
(@Entry,    3,      0,         40128), -- Quick King's Amber
(@Entry,    4,      0,         40129), -- Sovereign Dreadstone
(@Entry,    4,      0,         40130), -- Shifting Dreadstone
(@Entry,    4,      0,         40131), -- Tenuous Dreadstone
(@Entry,    4,      0,         40132), -- Glowing Dreadstone
(@Entry,    4,      0,         40133), -- Purified Dreadstone
(@Entry,    4,      0,         40134), -- Royal Dreadstone
(@Entry,    4,      0,         40135), -- Mysterious Dreadstone
(@Entry,    4,      0,         40136), -- Balanced Dreadstone
(@Entry,    4,      0,         40137), -- Infused Dreadstone
(@Entry,    4,      0,         40138), -- Regal Dreadstone
(@Entry,    4,      0,         40139), -- Defender's Dreadstone
(@Entry,    4,      0,         40140), -- Puissant Dreadstone
(@Entry,    4,      0,         40141), -- Guardian's Dreadstone
(@Entry,    5,      0,         40164), -- Timeless Eye of Zul
(@Entry,    5,      0,         40165), -- Jagged Eye of Zul
(@Entry,    5,      0,         40166), -- Vivid Eye of Zul
(@Entry,    5,      0,         40167), -- Enduring Eye of Zul
(@Entry,    5,      0,         40168), -- Steady Eye of Zul
(@Entry,    5,      0,         40169), -- Forceful Eye of Zul
(@Entry,    5,      0,         40170), -- Seer's Eye of Zul
(@Entry,    5,      0,         40171), -- Misty Eye of Zul
(@Entry,    5,      0,         40172), -- Shining Eye of Zul
(@Entry,    5,      0,         40173), -- Turbid Eye of Zul
(@Entry,    5,      0,         40174), -- Intricate Eye of Zul
(@Entry,    5,      0,         40175), -- Dazzling Eye of Zul
(@Entry,    5,      0,         40176), -- Sundered Eye of Zul
(@Entry,    5,      0,         40177), -- Lambent Eye of Zul
(@Entry,    5,      0,         40178), -- Opaque Eye of Zul
(@Entry,    5,      0,         40179), -- Energized Eye of Zul
(@Entry,    5,      0,         40180), -- Radiant Eye of Zul
(@Entry,    5,      0,         40181), -- Tense Eye of Zul
(@Entry,    5,      0,         40182), -- Shattered Eye of Zul
(@Entry,    6,      0,         40142), -- Inscribed Ametrine
(@Entry,    6,      0,         40143), -- Etched Ametrine
(@Entry,    6,      0,         40144), -- Champion's Ametrine
(@Entry,    6,      0,         40145), -- Resplendent Ametrine
(@Entry,    6,      0,         40146), -- Fierce Ametrine
(@Entry,    6,      0,         40147), -- Deadly Ametrine
(@Entry,    6,      0,         40148), -- Glinting Ametrine
(@Entry,    6,      0,         40149), -- Lucent Ametrine
(@Entry,    6,      0,         40150), -- Deft Ametrine
(@Entry,    6,      0,         40151), -- Luminous Ametrine
(@Entry,    6,      0,         40152), -- Potent Ametrine
(@Entry,    6,      0,         40153), -- Veiled Ametrine
(@Entry,    6,      0,         40154), -- Durable Ametrine
(@Entry,    6,      0,         40155), -- Reckless Ametrine
(@Entry,    6,      0,         40156), -- Wicked Ametrine
(@Entry,    6,      0,         40157), -- Pristine Ametrine
(@Entry,    6,      0,         40158), -- Empowered Ametrine
(@Entry,    6,      0,         40159), -- Stark Ametrine
(@Entry,    6,      0,         40160), -- Stalwart Ametrine
(@Entry,    6,      0,         40161), -- Glimmering Ametrine
(@Entry,    6,      0,         40162), -- Accurate Ametrine
(@Entry,    6,      0,         40163), -- Resolute Ametrine
(@Entry,    7,      0,         49110); -- Nightmare Tear
-- ----------------------------------------------------------------------------------------
