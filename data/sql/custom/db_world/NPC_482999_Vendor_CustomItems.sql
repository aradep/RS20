-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
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
@Ring11ID      = 45471,
@Ring12ID      = 45297,
@Ring13ID      = 51001,
@Ring14ID      = 34230,
@Ring15ID      = 34837,
@Ring16ID      = 33498,
@Ring17ID      = 45326,
@Ring18ID      = 47700,
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
@Model      = 27216,
@Scale      = 1,
@Name       = "Custom Items",
@Title      = "Test Vendor",
@Icon       = "Buy", -- Directions, Gunner, vehicleCursor, Driver, Attack, Buy, Speak, Pickup, Interact, Trainer, Taxi, Repair, LootAll --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7, -- 0:None, 1:Beast, 2:Dragonkin, 3:Demon, 4:Elemental, 5:Giant, 6:Undead, 7:Humanoid, 8:Critter, 9:Mechanical --
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 23,
@Class      = 1,
@Faction    = 35;

DELETE FROM creature_template WHERE Entry = @Entry;
INSERT INTO creature_template (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM creature_template_model WHERE CreatureID = @Entry;
INSERT INTO creature_template_model (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) 
VALUES (@Entry, @Model, @Scale, 1);

-- Vendor List
DELETE FROM npc_vendor WHERE `Entry` = @Entry;
INSERT INTO npc_vendor 
-- ----------------------------------------------------------------------------------------
(Entry,     Slot,   ExtendedCost,   Item) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,      0,         @Ring1ID),
(@Entry,    1,      0,         @Ring2ID),
(@Entry,    1,      0,         @Ring3ID),
(@Entry,    1,      0,         @Ring4ID),
(@Entry,    1,      0,         @Ring5ID),
(@Entry,    1,      0,         @Ring6ID),
(@Entry,    1,      0,         @Ring7ID),
(@Entry,    1,      0,         @Ring8ID),
(@Entry,    1,      0,         @Ring9ID),
(@Entry,    1,      0,         @Ring10ID),
(@Entry,    1,      0,         @Ring11ID),
(@Entry,    1,      0,         @Ring12ID),
(@Entry,    1,      0,         @Ring13ID),
(@Entry,    1,      0,         @Ring14ID),
(@Entry,    1,      0,         @Ring15ID),
(@Entry,    1,      0,         @Ring16ID),
(@Entry,    1,      0,         @Ring17ID),
(@Entry,    1,      0,         @Ring18ID),
(@Entry,    1,      0,         @Ring19ID),
(@Entry,    1,      0,         @Ring20ID),
(@Entry,    2,      0,         @DruidCard),
(@Entry,    2,      0,         @PriestCard),
(@Entry,    2,      0,         @RogueCard),
(@Entry,    2,      0,         @MageCard),
(@Entry,    2,      0,         @ShamanCard),
(@Entry,    2,      0,         @WarriorCard),
(@Entry,    2,      0,         @PaladinCard),
(@Entry,    2,      0,         @HunterCard),
(@Entry,    2,      0,         @WarlockCard);
-- ----------------------------------------------------------------------------------------
