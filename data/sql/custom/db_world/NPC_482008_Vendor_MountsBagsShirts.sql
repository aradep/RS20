-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Mounts
-- -----------------------------------

-- Creature
SET
@Entry      = 482008,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Style Specialist",
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

-- Extended costs
SET
@EmblemofValor_x1  = 2589,
@EmblemofValor_x15 = 2638,
@EmblemofValor_x30 = 2540,
@EmblemofValor_x45 = 2539,
@EmblemofValor_x60 = 2535,
@EmblemofValor_x75 = 2538,
@Champions_Writ_x1 = 2639,
@20000_Honor       = 1006,
@40000_Honor       = 2403,
@3750_Arena        = 1664;

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Basic mounts
(@Entry,      1,      @EmblemofValor_x15,    /*Reins of the Swift Frostsaber*/18766),
(@Entry,      1,      @EmblemofValor_x15,    /*Reins of the Swift Mistsaber*/18767),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Green Mechanostrider*/18772),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift White Mechanostrider*/18773),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Yellow Mechanostrider*/18774),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Palomino*/18776),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Brown Steed*/18777),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift White Steed*/18778),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift White Ram*/18785),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Brown Ram*/18786),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Gray Ram*/18787),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Blue Raptor*/18788),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Olive Raptor*/18789),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Orange Raptor*/18790),
(@Entry,      1,      @EmblemofValor_x15,    /*Purple Skeletal Warhorse*/18791),
(@Entry,      1,      @EmblemofValor_x15,    /*Great White Kodo*/18793),
(@Entry,      1,      @EmblemofValor_x15,    /*Great Brown Kodo*/18794),
(@Entry,      1,      @EmblemofValor_x15,    /*Great Gray Kodo*/18795),
(@Entry,      1,      @EmblemofValor_x15,    /*Horn of the Swift Brown Wolf*/18796),
(@Entry,      1,      @EmblemofValor_x15,    /*Horn of the Swift Timber Wolf*/18797),
(@Entry,      1,      @EmblemofValor_x15,    /*Horn of the Swift Gray Wolf*/18798),
(@Entry,      1,      @EmblemofValor_x15,    /*Reins of the Swift Stormsaber*/18902),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Pink Hawkstrider*/28936),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Green Hawkstrider*/29223),
(@Entry,      1,      @EmblemofValor_x15,    /*Swift Purple Hawkstrider*/29224),
-- PvE mounts
(@Entry,      3,      @EmblemofValor_x30,   /*Argent Warhorse*/47180),
(@Entry,      3,      @EmblemofValor_x30,   /*The Horsemans Reins*/37012),
(@Entry,      3,      @EmblemofValor_x30,   /*Fiery Warhorses Reins*/30480),
(@Entry,      3,      @EmblemofValor_x30,   /*Swift White Hawkstrider*/35513),
(@Entry,      4,      @EmblemofValor_x45,   /*Celestial Steed*/54811),
(@Entry,      4,      @EmblemofValor_x45,   /*Swift Zhevra*/37719),
(@Entry,      4,      @EmblemofValor_x45,   /*Big Battle Bear*/49282),
(@Entry,      4,      @EmblemofValor_x45,   /*Polar Bear Harness*/40777),
(@Entry,      5,      @EmblemofValor_x60,   /*Reins of the Raven Lord*/32768),
(@Entry,      5,      @EmblemofValor_x60,   /*Amani War Bear*/33809),
(@Entry,      5,      @EmblemofValor_x60,   /*Swift Razzashi Raptor*/19872),
(@Entry,      5,      @EmblemofValor_x60,   /*Swift Zulian Tiger*/19902),
(@Entry,      6,      @EmblemofValor_x75,   /*Reins of the Crimson Deathcharger*/52200),
(@Entry,      6,      @EmblemofValor_x75,   /*Crusaders White Warhorse*/49096),
(@Entry,      6,      @EmblemofValor_x75,   /*Crusaders Black Warhorse*/49098),
(@Entry,      6,      @EmblemofValor_x75,   /*Reins of the Grand Black War Mammoth*/44083),
(@Entry,      6,      @EmblemofValor_x75,   /*Reins of the Grand Ice Mammoth*/44086),
(@Entry,      6,      @EmblemofValor_x75,   /*Reins of the Grand Black War Mammoth*/43959),
(@Entry,      6,      @EmblemofValor_x75,   /*Reins of the Grand Ice Mammoth*/43961),
-- PvP mounts
(@Entry,      7,      @20000_Honor,     /*Black War Kodo,*/29466),
(@Entry,      7,      @20000_Honor,     /*Black War Ram,*/29467),
(@Entry,      7,      @20000_Honor,     /*Black War Steed Bridle,*/29468),
(@Entry,      7,      @20000_Honor,     /*Horn of the Black War Wolf,*/29469),
(@Entry,      7,      @20000_Honor,     /*Reins of the Black War Tiger,*/29471),
(@Entry,      7,      @20000_Honor,     /*Whistle of the Black War Raptor,*/29472),
(@Entry,      7,      @20000_Honor,     /*Reins of the Black War Elekk,*/35906),
(@Entry,      7,      @20000_Honor,     /*Reins of the Black War Bear,*/44223),
(@Entry,      7,      @20000_Honor,     /*Reins of the Black War Bear,*/44224),
(@Entry,      7,      @20000_Honor,     /*Swift Warstrider*/34129),
(@Entry,      7,      @20000_Honor,     /*Black Battlestrider*/29465),
(@Entry,      7,      @40000_Honor,     /*Reins of the Black War Mammoth,*/44077),
(@Entry,      7,      @40000_Honor,     /*Reins of the Black War Mammoth,*/43956),
-- Golden ticket mounts
(@Entry,      8,      @Champions_Writ_x1,     /*Black Qiraji Resonating Crystal*/21176),
(@Entry,      8,      @Champions_Writ_x1,     /*Reins of the Swift Spectral Tiger*/33225),
(@Entry,      8,      @Champions_Writ_x1,     /*Magic Rooster Egg*/46778),
(@Entry,      8,      @Champions_Writ_x1,     /*Big Blizzard Bear*/43599),
(@Entry,      8,      @Champions_Writ_x1,     /*Invincibles Reins*/50818),
(@Entry,      8,      @Champions_Writ_x1,     /*Reins of the Travelers Tundra Mammoth*/44234),
(@Entry,      8,      @Champions_Writ_x1,     /*Reins of the Travelers Tundra Mammoth*/44235),
-- Bags
(@Entry,    9,         0,                      14046),
(@Entry,    9,         @EmblemofValor_x15,     41599),
(@Entry,    9,         @EmblemofValor_x30,     41600),
(@Entry,    9,         @EmblemofValor_x60,     51809),
-- Shirts
(@Entry,    10,        @EmblemofValor_x1,      42360),
(@Entry,    10,        @EmblemofValor_x1,      42361),
(@Entry,    10,        @EmblemofValor_x1,      42363),
(@Entry,    10,        @EmblemofValor_x1,      42365),
(@Entry,    10,        @EmblemofValor_x1,      42368),
(@Entry,    10,        @EmblemofValor_x1,      42369),
(@Entry,    10,        @EmblemofValor_x1,      42370),
(@Entry,    10,        @EmblemofValor_x1,      42371),
(@Entry,    10,        @EmblemofValor_x1,      42372),
(@Entry,    10,        @EmblemofValor_x1,      42373),
(@Entry,    10,        @EmblemofValor_x1,      42374),
(@Entry,    10,        @EmblemofValor_x1,      42375),
(@Entry,    10,        @EmblemofValor_x1,      42376),
(@Entry,    10,        @EmblemofValor_x1,      42377),
(@Entry,    10,        @EmblemofValor_x1,      42378),
(@Entry,    10,        @EmblemofValor_x1,      45664),
(@Entry,    10,        @EmblemofValor_x1,      45666),
(@Entry,    10,        @EmblemofValor_x1,      45667),
(@Entry,    10,        @EmblemofValor_x1,      45668),
(@Entry,    10,        @EmblemofValor_x1,      45669),
(@Entry,    10,        @EmblemofValor_x1,      45670),
(@Entry,    10,        @EmblemofValor_x1,      45671),
(@Entry,    10,        @EmblemofValor_x1,      45672),
(@Entry,    10,        @EmblemofValor_x1,      45673),
(@Entry,    10,        @EmblemofValor_x1,      45674);

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1978.14, -448.728, 11.2723, 2.21484, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');
