-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Weapons
-- -----------------------------------

-- Creature
SET
@Entry      = 482015,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Weapon Vendor",
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
(@Entry,    1,         2554,           1292), -- Butcher's Cleaver
(@Entry,    1,         2554,           1481), -- Grimclaw
(@Entry,    1,         2554,           2807), -- Guillotine Axe
(@Entry,    1,         2554,           5196), -- Smite's Reaver
(@Entry,    1,         2554,           5426), -- Serpent's Kiss
(@Entry,    1,         2554,           12990), -- Razor's Edge
(@Entry,    2,         2554,           872), -- Rockslicer
(@Entry,    2,         2554,           1318), -- Night Reaver
(@Entry,    2,         2554,           5194), -- Taskmaster Axe
(@Entry,    2,         2554,           5423), -- Boahn's Fang
(@Entry,    2,         2554,           12975), -- Prospector Axe
(@Entry,    2,         2554,           23171), -- The Axe of Severing
(@Entry,    2,         2554,           3021), -- Ranger Bow
(@Entry,    3,         2554,           6469), -- Venomstrike
(@Entry,    3,         2554,           20437), -- Outrider's Bow
(@Entry,    3,         2554,           20438), -- Outrunner's Bow
(@Entry,    3,         2554,           22982), -- Farstrider's Longbow
(@Entry,    4,         2554,           13136), -- Lil Timmy's Peashooter
(@Entry,    5,         2554,           1483), -- Face Smasher
(@Entry,    5,         2554,           2194), -- Diamond Hammer
(@Entry,    5,         2554,           2256), -- Skeletal Club
(@Entry,    5,         2554,           5197), -- Cookie's Tenderizer
(@Entry,    5,         2554,           6323), -- Baron's Scepter
(@Entry,    5,         2554,           6472), -- Stinging Viper
(@Entry,    6,         2554,           3194), -- Black Malice
(@Entry,    6,         2554,           5187), -- Rhahk'Zor's Hammer
(@Entry,    6,         2554,           7230), -- Smite's Mighty Hammer
(@Entry,    6,         2554,           12983), -- Rakzur Club
(@Entry,    7,         2554,           5200), -- Impaling Harpoon
(@Entry,    7,         2554,           12989), -- Gargoyle's Bite
(@Entry,    8,         2554,           935), -- Night Watch Shortsword
(@Entry,    8,         2554,           1482), -- Shadowfang
(@Entry,    8,         2554,           1937), -- Buzz Saw
(@Entry,    8,         2554,           5191), -- Cruel Barb
(@Entry,    8,         2554,           5192), -- Thief's Blade
(@Entry,    8,         2554,           6504), -- Wingblade
(@Entry,    8,         2554,           6633), -- Butcher's Slicer
(@Entry,    8,         2554,           12976), -- Ironpatch Blade
(@Entry,    8,         2554,           20430), -- Legionnaire's Sword
(@Entry,    8,         2554,           20440), -- Protector's Sword
(@Entry,    9,         2554,           2205), -- Duskbringer
(@Entry,    9,         2554,           12992), -- Searing Blade
(@Entry,    9,         2554,           22995), -- Sin'dorei Warblade
(@Entry,   10,         2554,           890), -- Twisted Chanter's Staff
(@Entry,   10,         2554,           1484), -- Witching Stave
(@Entry,   10,         2554,           2042), -- Staff of Westfall
(@Entry,   10,         2554,           2271), -- Staff of the Blessed Seer
(@Entry,   10,         2554,           3415), -- Staff of the Friar
(@Entry,   10,         2554,           5201), -- Emberstone Staff
(@Entry,   10,         2554,           6505), -- Crescent Staff
(@Entry,   10,         2554,           6631), -- Living Root
(@Entry,   10,         2554,           20425), -- Advisor's Gnarled Staff
(@Entry,   10,         2554,           20434), -- Lorekeeper's Staff
(@Entry,   10,         2554,           22980), -- Staff of the Sun
(@Entry,   11,         2554,           1935), -- Assassin's Blade
(@Entry,   11,         2554,           2169), -- Buzzer Blade
(@Entry,   11,         2554,           2236), -- Blackfang
(@Entry,   11,         2554,           2567), -- Evocator's Blade
(@Entry,   11,         2554,           3413), -- Doomspike
(@Entry,   11,         2554,           6448), -- Tail Spike
(@Entry,   11,         2554,           20441), -- Scout's Blade
(@Entry,   11,         2554,           20443), -- Sentinel's Blade
(@Entry,   11,         2554,           22984), -- Dawnblade
(@Entry,   12,         2554,           5198), -- Cookie's Stirring Rod
(@Entry,   12,         2554,           5243), -- Firebelcher
(@Entry,   12,         2554,           12984), -- Skycaller
(@Entry,   13,         2554,           43654), -- Tome of the Dawn
(@Entry,   13,         2554,           5183), -- Pulsating Hydra Heart
(@Entry,   13,         2554,           2879), -- Antipodean Rod
(@Entry,   13,         2554,           43515), -- Mystic Tome
(@Entry,   14,            0,           3030), -- Arrows
(@Entry,   14,            0,           3033); -- Bullets

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
