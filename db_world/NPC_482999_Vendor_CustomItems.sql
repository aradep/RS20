-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom items test vendor
-- -----------------------------------

SET
-- Rings of Power
@Ring1ID       = 46010,
@Ring2ID       = 50424,
@Ring3ID       = 51558,
@Ring4ID       = 31921,
@Ring5ID       = 47224,
@Ring6ID       = 33496,
@Ring7ID       = 50398,
@Ring8ID       = 50614,
@Ring9ID       = 45608,
@Ring10ID      = 45871,
@Ring11ID      = 28793,
@Ring12ID      = 45297,
@Ring13ID      = 51001,
@Ring14ID      = 45471,
@Ring15ID      = 34837,
@Ring16ID      = 33498,
@Ring17ID      = 45326,
@Ring18ID      = 31326,
@Ring19ID      = 34625,
@Ring20ID      = 45157,
-- Darkmoon Cards
@DruidCard     = 42988,
@PriestCard    = 31856,
@RogueCard     = 31859,
@MageCard      = 19288,
@ShamanCard    = 19289,
@WarriorCard   = 31857,
@PaladinCard   = 19287,
@HunterCard    = 42990,
@WarlockCard   = 19290;

-- Creature
SET
@Entry      = 482999,
@Model      = 18154,
@Scale      = 0.18,
@Name       = "Test Vendor",
@Title      = "Custom Item Showcase",
@Icon       = "Buy", -- Directions, Gunner, vehicleCursor, Driver, Attack, Buy, Speak, Pickup, Interact, Trainer, Taxi, Repair, LootAll --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7, -- 0:None, 1:Beast, 2:Dragonkin, 3:Demon, 4:Elemental, 5:Giant, 6:Undead, 7:Humanoid, 8:Critter, 9:Mechanical --
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 23,
@Class      = 1,
@Faction    = 35;
DELETE FROM `creature_template` WHERE Entry = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE CreatureID = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(Entry,     Slot,   ExtendedCost,   Item) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,      2743,         @Ring1ID),
(@Entry,    1,      2743,         @Ring2ID),
(@Entry,    1,      2743,         @Ring3ID),
(@Entry,    1,      2743,         @Ring4ID),
(@Entry,    1,      2743,         @Ring5ID),
(@Entry,    1,      2743,         @Ring6ID),
(@Entry,    1,      2743,         @Ring7ID),
(@Entry,    1,      2743,         @Ring8ID),
(@Entry,    1,      2743,         @Ring9ID),
(@Entry,    1,      2743,         @Ring10ID),
(@Entry,    1,      2743,         @Ring11ID),
(@Entry,    1,      2743,         @Ring12ID),
(@Entry,    1,      2743,         @Ring13ID),
(@Entry,    1,      2743,         @Ring14ID),
(@Entry,    1,      2743,         @Ring15ID),
(@Entry,    1,      2743,         @Ring16ID),
(@Entry,    1,      2743,         @Ring17ID),
(@Entry,    1,      2743,         @Ring18ID),
(@Entry,    1,      2743,         @Ring19ID),
(@Entry,    1,      2743,         @Ring20ID),
(@Entry,    2,      2743,         @DruidCard),
(@Entry,    2,      2743,         @PriestCard),
(@Entry,    2,      2743,         @RogueCard),
(@Entry,    2,      2743,         @MageCard),
(@Entry,    2,      2743,         @ShamanCard),
(@Entry,    2,      2743,         @WarriorCard),
(@Entry,    2,      2743,         @PaladinCard),
(@Entry,    2,      2743,         @HunterCard),
(@Entry,    2,      2743,         @WarlockCard);
-- ----------------------------------------------------------------------------------------

-- Extended costs
SET
@EmblemofHeroism_x10  = 2484,
@EmblemofHeroism_x15  = 2525,
@EmblemofHeroism_x20  = 2706,
@EmblemofHeroism_x25  = 2523,
@EmblemofHeroism_x30  = 2529,
@EmblemofHeroism_x35  = 2531,
@EmblemofHeroism_x40  = 2524,
@EmblemofHeroism_x45  = 2528,
@EmblemofHeroism_x50  = 2532,
@EmblemofHeroism_x60  = 2526,
@EmblemofHeroism_x65  = 2551,
@EmblemofHeroism_x75  = 2527,
@EmblemofHeroism_x80  = 2533,
@EmblemofHeroism_x100 = 2530,
@EmblemofHeroism_x200 = 2550;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,              `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Heirloom trinkets
(@Entry,    1,          @EmblemofHeroism_x10,         42991), -- Swift Hand of Justice
(@Entry,    1,          @EmblemofHeroism_x10,         42992), -- Discerning Eye of the Beast
(@Entry,    1,          @EmblemofHeroism_x10,         50255), -- Dread Pirate Ring
-- Heirloom shoulder
(@Entry,    2,          @EmblemofHeroism_x15,         42952), -- Stained Shadowcraft Spaulders
(@Entry,    2,          @EmblemofHeroism_x15,         42984), -- Preened Ironfeather Shoulders
(@Entry,    2,          @EmblemofHeroism_x15,         42951), -- Mystical Pauldrons of Elements
(@Entry,    2,          @EmblemofHeroism_x15,         42985), -- Tattered Dreadmist Mantle
(@Entry,    2,          @EmblemofHeroism_x15,         42949), -- Polished Spaulders of Valor
(@Entry,    2,          @EmblemofHeroism_x15,         42950), -- Champion Herod's Shoulder
(@Entry,    2,          @EmblemofHeroism_x15,         44103), -- Exceptional Stormshroud Shoulders
-- Heirloom chest
(@Entry,    3,          @EmblemofHeroism_x20,         48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          @EmblemofHeroism_x20,         48687), -- Preened Ironfeather Breastplate
(@Entry,    3,          @EmblemofHeroism_x20,         48677), -- Champion's Deathdealer Breastplate
(@Entry,    3,          @EmblemofHeroism_x20,         48685), -- Polished Breastplate of Valor
(@Entry,    3,          @EmblemofHeroism_x20,         48691), -- Tattered Dreadmist Robe
(@Entry,    3,          @EmblemofHeroism_x20,         48683), -- Mystical Vest of Elements
-- Heirlooms weapons
(@Entry,    4,          @EmblemofHeroism_x25,         42944), -- Balanced Heartseeker
(@Entry,    4,          @EmblemofHeroism_x25,         42948), -- Devout Aurastone Hammer
(@Entry,    4,          @EmblemofHeroism_x25,         44091), -- Sharpened Scarlet Kris
(@Entry,    4,          @EmblemofHeroism_x25,         42945), -- Venerable Dal'Rend's Sacred Charge
(@Entry,    4,          @EmblemofHeroism_x40,         42946), -- Charmed Ancient Bone Bow
(@Entry,    4,          @EmblemofHeroism_x40,         42947), -- Dignified Headmaster's Charge
(@Entry,    4,          @EmblemofHeroism_x40,         42943); -- Bloodied Arcanite Reaper
