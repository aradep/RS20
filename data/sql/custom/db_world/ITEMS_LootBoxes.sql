-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Loot Boxes
-- -----------------------------------

-- Loot Table IDs
SET
@Ref_PetToy          = 48205,
@Ref_EngiItem        = 48206,
@Ref_Darkmoon        = 48207,
@Ref_PvEHat          = 48209,
@Ref_PvPHat          = 48210,
@Ref_Rings           = 48211;

-- Mystery Box
SET
@Entry          = 17302,
@Name           = 'Magic Mystery Box',
@Class          = 15,
@Subclass       = 0,
@Flags          = 4,
@InventoryType  = 0,
@Quality        = 4,
@SellPrice      = 0,
@Itemlevel      = 20,
@MaxCount       = 0,
@Stackable      = 1,
@Description    = 'Contains random items!';
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `Name`, `Quality`, `Flags`, `SellPrice`, `InventoryType`, `ItemLevel`, `MaxCount`, `Stackable`, `Description`) VALUES (@Entry, @Class, @Subclass, @Name, @Quality, @Flags, @SellPrice, @InventoryType, @Itemlevel, @MaxCount, @Stackable, @Description);

-- Loot template - Mystery Box
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,     `reference`,        `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------------------------------
(@Entry,    40753,      0,                  100,        0,          1,          1,          '1x Emblem of Style'),
(@Entry,    40752,      0,                  100,        0,          5,          5,          '5x Badge of Justice'), -- PvE Only Reward
(@Entry,    43102,      0,                  100,        0,          1,          1,          '1x Frozen Orb'),
(@Entry,    34052,      0,                  100,        0,          4,          4,          '4x Dream Shard'),
(@Entry,    46849,      0,                  100,        0,          10,         10,         '10x Magic Dust'),
(@Entry,        1,      @Ref_Darkmoon,      100,        6,          1,          1,          'Darkmoon Card'),
(@Entry,        2,      @Ref_PvEHat,        100,        8,          1,          1,          'PvE Hat'), -- PvE Only Reward
(@Entry,        3,      @Ref_PetToy,         25,        7,          1,          1,          'Pet/Toy'),
(@Entry,        4,      @Ref_Rings,           5,       10,          1,          1,          'Ring of Power'),
(@Entry,    46114,      0,                    1,       11,          1,          1,          'Mount Certificate');
-- ----------------------------------------------------------------------------------------------------------------------------------------------

-- Spoils of War
SET
@Entry          = 43346,
@Name           = 'Spoils of War',
@Quality        = 4,
@SellPrice      = 0,
@Itemlevel      = 20,
@MaxCount       = 0,
@Stackable      = 1,
@Description    = 'Contains random items!';
REPLACE INTO `item_template` (`entry`, `Name`, `Quality`, `SellPrice`, `ItemLevel`, `MaxCount`, `Stackable`, `Description`) VALUES (@Entry,@Name,@Quality,@SellPrice,@Itemlevel,@MaxCount,@Stackable,@Description);

-- Loot template - Spoils of War
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ---------------------------------------------------------------------------------------------------------------------------------
(`Entry`,     `Item`,     `reference`,        `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ---------------------------------------------------------------------------------------------------------------------------------
(@Entry,      40753,      0,                 100,        0,          5,          5,          '1x Emblem of Style'),
(@Entry,      29434,      0,                 100,        0,          10,         10,         '10x Honor Coin'), -- PvP Only Reward
(@Entry,      43102,      0,                 100,        0,          1,          1,          '1x Frozen Orb'),
(@Entry,      46849,      0,                 100,        0,          10,         10,         '10x Magic Dust'),
(@Entry,      10456,      0,                 100,        0,          1,          1,          'Big Bomg Bag'),
(@Entry,          1,      @Ref_Darkmoon,     100,        6,          1,          1,          'Darkmoon Card'),
(@Entry,          2,      @Ref_PvPHat,       100,        9,          1,          1,          'PvP Hat'), -- PvP Only Reward
(@Entry,          3,      @Ref_PetToy,        25,        7,          1,          1,          'Pet/Toy'),
(@Entry,          4,      @Ref_Rings,          5,       10,          1,          1,          'Ring of Power'),
(@Entry,      46114,      0,                   1,       11,          1,          1,          'Mount Certificate');
-- ---------------------------------------------------------------------------------------------------------------------------------

-- Field Supplies
SET
@Entry          = 20602,
@Name           = 'Field Supplies',
@Quality        = 3,
@SellPrice      = 0,
@Itemlevel      = 20,
@MaxCount       = 0,
@Stackable      = 1,
@Description    = 'An assortment of potions and elixirs.';
REPLACE INTO `item_template` (`entry`, `Name`, `Quality`, `SellPrice`, `ItemLevel`, `MaxCount`, `Stackable`, `Description`) VALUES (@Entry,@Name,@Quality,@SellPrice,@Itemlevel,@MaxCount,@Stackable,@Description);

-- Loot template - Field Supplies
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,     `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Entry,    2459,       0,          1,          3,          3,          'Swiftness Potion'),
(@Entry,    5634,       0,          1,          3,          3,          'Free Action Potion'),
(@Entry,    6048,       0,          1,          3,          3,          'Shadow Protection Potion'),
(@Entry,    6051,       0,          1,          3,          3,          'Holy Protection Potion'),
(@Entry,    1450,       0,          1,          3,          3,          'Potion of Fervor'),
(@Entry,    6372,       0,          1,          3,          3,          'Swim Speed Potion'),
(@Entry,    3384,       0,          1,          3,          3,          'Minor Magic Resistance Potion'),
(@Entry,    3391,       0,          2,          2,          2,          'Elixir of Ogres Strength'),
(@Entry,    6373,       0,          2,          2,          2,          'Elixir of Firepower'),
(@Entry,    3390,       0,          2,          2,          2,          'Elixir of Lesser Agility'),
(@Entry,    3389,       0,          2,          2,          2,          'Elixir of Defense'),
(@Entry,    3388,       0,          2,          2,          2,          'Strong Trolls Blood Elixir'),
(@Entry,    45621,      0,          2,          2,          2,          'Elixir of Minor Accuracy'),
(@Entry,    3383,       0,          2,          2,          2,          'Elixir of Wisdom'),
(@Entry,    6662,       0,          2,          2,          2,          'Elixir of Giant Growth'),
(@Entry,    5996,       0,          2,          2,          2,          'Elixir of Water Breathing'),
(@Entry,    3825,       0,          2,          2,          2,          'Elixir of Fortitude');
-- ----------------------------------------------------------------------------------------------------------------------

-- Big Bomb Bag
SET
@Entry          = 10456,
@Name           = 'Big Bomb Bag',
@Quality        = 2,
@SellPrice      = 0,
@Itemlevel      = 20,
@MaxCount       = 0,
@Stackable      = 1,
@Description    = 'Warning: Contains explosives.';
REPLACE INTO `item_template` (`entry`, `Name`, `Quality`, `SellPrice`, `ItemLevel`, `MaxCount`, `Stackable`, `Description`) VALUES (@Entry,@Name,@Quality,@SellPrice,@Itemlevel,@MaxCount,@Stackable,@Description);

-- Loot template - Big Bomb Bag
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,     `reference`,    `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Entry,    10586,      0,              0,          1,          2,          3,          'The Big One'),
(@Entry,    10646,      0,              0,          1,          3,          4,          'Goblin Sapper Charge'),
(@Entry,    4395,       0,              0,          1,          1,          1,          'Goblin Land Mine'),
(@Entry,    10514,      0,              0,          1,          4,          5,          'Mithril Frag Bomb'),
(@Entry,    1,          @Ref_EngiItem,  5,          2,          1,          1,          'Engineering Item');
-- ----------------------------------------------------------------------------------------------------------------------

-- Reference template - Engineering Item
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_EngiItem;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,  `groupid`,  `mincount`,  `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------
(@Ref_EngiItem,  40768,      50,        2,          1,           1,          'MOLL_E'),
(@Ref_EngiItem,  49040,      30,        2,          1,           1,          'Jeeves'),
(@Ref_EngiItem,  41508,      10,        2,          1,           1,          'Mechano Hog'),
(@Ref_EngiItem,  44413,      10,        2,          1,           1,          'Mekgineers Chopper');
-- ----------------------------------------------------------------------------------------------------------

-- Reference template - PvE Hat
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_PvEHat;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- Warrior
(@Ref_PvEHat,   51221,      0,          8,          1,          1,          'Sanctified Ymirjar Lords Greathelm'),
(@Ref_PvEHat,   51212,      0,          8,          1,          1,          'Sanctified Ymirjar Lords Greathelm'),
(@Ref_PvEHat,   50080,      0,          8,          1,          1,          'Ymirjar Lords Greathelm'),
(@Ref_PvEHat,   48876,      0,          8,          1,          1,          'Wrynns Greathelm'),
(@Ref_PvEHat,   48388,      0,          8,          1,          1,          'Hellscreams Greathelm'),
(@Ref_PvEHat,   48371,      0,          8,          1,          1,          'Wrynns Greathelm of Conquest'),
(@Ref_PvEHat,   48867,      0,          8,          1,          1,          'Wrynns Helmet'),
(@Ref_PvEHat,   46151,      0,          8,          1,          1,          'Conquerors Siegebreaker Greathelm'),
(@Ref_PvEHat,   45425,      0,          8,          1,          1,          'Valorous Siegebreaker Greathelm'),
(@Ref_PvEHat,   40528,      0,          8,          1,          1,          'Valorous Dreadnaught Greathelm'),
(@Ref_PvEHat,   39605,      0,          8,          1,          1,          'Dreadnaught Helmet'),
(@Ref_PvEHat,   30972,      0,          8,          1,          1,          'Onslaught Battle-Helm'),
(@Ref_PvEHat,   30115,      0,          8,          1,          1,          'Destroyer Battle-Helm'),
(@Ref_PvEHat,   29011,      0,          8,          1,          1,          'Warbringer Battle-Helm'),
(@Ref_PvEHat,   21329,      0,          8,          1,          1,          'Conquerors Crown'),
(@Ref_PvEHat,   16963,      0,          8,          1,          1,          'Helm of Wrath'),
(@Ref_PvEHat,   16866,      0,          8,          1,          1,          'Helm of Might'),
-- Paladin      
(@Ref_PvEHat,   51266,      0,          8,          1,          1,          'Sanctified Lightsworn Faceguard'),
(@Ref_PvEHat,   51162,      0,          8,          1,          1,          'Sanctified Lightsworn Faceguard'),
(@Ref_PvEHat,   50326,      0,          8,          1,          1,          'Lightsworn Faceguard'),
(@Ref_PvEHat,   48928,      0,          8,          1,          1,          'Turalyons Faceguard'),
(@Ref_PvEHat,   48917,      0,          8,          1,          1,          'Turalyons Helm'),
(@Ref_PvEHat,   48587,      0,          8,          1,          1,          'Liadrins Faceguard'),
(@Ref_PvEHat,   48564,      0,          8,          1,          1,          'Turalyons Faceguard of Conquest'),
(@Ref_PvEHat,   48902,      0,          8,          1,          1,          'Turalyons Headpiece'),
(@Ref_PvEHat,   46156,      0,          8,          1,          1,          'Conquerors Aegis Faceguard'),
(@Ref_PvEHat,   45372,      0,          8,          1,          1,          'Valorous Aegis Faceguard'),
(@Ref_PvEHat,   46215,      0,          8,          1,          1,          'Conquerors Aegis Helm'),
(@Ref_PvEHat,   40571,      0,          8,          1,          1,          'Valorous Redemption Faceguard'),
(@Ref_PvEHat,   39628,      0,          8,          1,          1,          'Heroes Redemption Faceguard'),
(@Ref_PvEHat,   30988,      0,          8,          1,          1,          'Lightbringer Greathelm'),
(@Ref_PvEHat,   30987,      0,          8,          1,          1,          'Lightbringer Faceguard'),
(@Ref_PvEHat,   30125,      0,          8,          1,          1,          'Crystalforge Faceguard'),
(@Ref_PvEHat,   29061,      0,          8,          1,          1,          'Justicar Crown'),
(@Ref_PvEHat,   21387,      0,          8,          1,          1,          'Avengers Crown'),
(@Ref_PvEHat,   16955,      0,          8,          1,          1,          'Judgement Crown'),
(@Ref_PvEHat,   16854,      0,          8,          1,          1,          'Lawbringer Helm'),
-- Hunter       
(@Ref_PvEHat,   51286,      0,          8,          1,          1,          'Sanctified AhnKahar Blood Hunters Headpiece'),
(@Ref_PvEHat,   51153,      0,          8,          1,          1,          'Sanctified AhnKahar Blood Hunters Headpiece'),
(@Ref_PvEHat,   50115,      0,          8,          1,          1,          'AhnKahar Blood Hunters Headpiece'),
(@Ref_PvEHat,   48267,      0,          8,          1,          1,          'Windrunners Headpiece'),
(@Ref_PvEHat,   48250,      0,          8,          1,          1,          'Windrunners Headpiece of Conquest'),
(@Ref_PvEHat,   48820,      0,          8,          1,          1,          'Windrunners Headpiece'),
(@Ref_PvEHat,   46143,      0,          8,          1,          1,          'Conquerors Scourgestalker Headpiece'),
(@Ref_PvEHat,   46274,      0,          8,          1,          1,          'Conquerors Scourgestalker Headpiece'),
(@Ref_PvEHat,   45361,      0,          8,          1,          1,          'Valorous Scourgestalker Headpiece'),
(@Ref_PvEHat,   40505,      0,          8,          1,          1,          'Valorous Cryptstalker Headpiece'),
(@Ref_PvEHat,   39578,      0,          8,          1,          1,          'Heroes Cryptstalker Headpiece'),
(@Ref_PvEHat,   31003,      0,          8,          1,          1,          'Gronnstalkers Helmet'),
(@Ref_PvEHat,   30141,      0,          8,          1,          1,          'Rift Stalker Helm'),
(@Ref_PvEHat,   29081,      0,          8,          1,          1,          'Demon Stalker Greathelm'),
(@Ref_PvEHat,   21366,      0,          8,          1,          1,          'Strikers Diadem'),
(@Ref_PvEHat,   16939,      0,          8,          1,          1,          'Dragonstalkers Helm'),
(@Ref_PvEHat,   16846,      0,          8,          1,          1,          'Giantstalkers Helmet'),
-- Rogue        
(@Ref_PvEHat,   51252,      0,          8,          1,          1,          'Sanctified Shadowblade Helmet'),
(@Ref_PvEHat,   51187,      0,          8,          1,          1,          'Sanctified Shadowblade Helmet'),
(@Ref_PvEHat,   50089,      0,          8,          1,          1,          'Shadowblade Helmet'),
(@Ref_PvEHat,   48235,      0,          8,          1,          1,          'Garonas Helmet'),
(@Ref_PvEHat,   48218,      0,          8,          1,          1,          'VanCleefs Helmet of Conquest'),
(@Ref_PvEHat,   48811,      0,          8,          1,          1,          'VanCleefs Helmet'),
(@Ref_PvEHat,   46125,      0,          8,          1,          1,          'Conquerors Terrorblade Helmet'),
(@Ref_PvEHat,   46290,      0,          8,          1,          1,          'Conquerors Terrorblade Helmet'),
(@Ref_PvEHat,   45398,      0,          8,          1,          1,          'Valorous Terrorblade Helmet'),
(@Ref_PvEHat,   40499,      0,          8,          1,          1,          'Valorous Bonescythe Helmet'),
(@Ref_PvEHat,   39561,      0,          8,          1,          1,          'Heroes Bonescythe Helmet'),
(@Ref_PvEHat,   31027,      0,          8,          1,          1,          'Slayers Helm'),
(@Ref_PvEHat,   30146,      0,          8,          1,          1,          'Deathmantle Helm'),
(@Ref_PvEHat,   29044,      0,          8,          1,          1,          'Netherblade Facemask'),
(@Ref_PvEHat,   21360,      0,          8,          1,          1,          'Deathdealers Helm'),
(@Ref_PvEHat,   16908,      0,          8,          1,          1,          'Bloodfang Hood'),
(@Ref_PvEHat,   16821,      0,          8,          1,          1,          'Nightslayer Cover'),
-- Priest       
(@Ref_PvEHat,   51255,      0,          8,          1,          1,          'Sanctified Crimson Acolyte Cowl'),
(@Ref_PvEHat,   51178,      0,          8,          1,          1,          'Sanctified Crimson Acolyte Cowl'),
(@Ref_PvEHat,   50392,      0,          8,          1,          1,          'Crimson Acolyte Cowl'),
(@Ref_PvEHat,   48058,      0,          8,          1,          1,          'Zabras Circlet'),
(@Ref_PvEHat,   47914,      0,          8,          1,          1,          'Velens Circlet of Conquest'),
(@Ref_PvEHat,   48745,      0,          8,          1,          1,          'Velens Circlet'),
(@Ref_PvEHat,   46172,      0,          8,          1,          1,          'Conquerors Circlet of Sanctification'),
(@Ref_PvEHat,   46230,      0,          8,          1,          1,          'Conquerors Circlet of Sanctification'),
(@Ref_PvEHat,   45386,      0,          8,          1,          1,          'Valorous Circlet of Sanctification'),
(@Ref_PvEHat,   39514,      0,          8,          1,          1,          'Crown of Faith'),
(@Ref_PvEHat,   31063,      0,          8,          1,          1,          'Cowl of Absolution'),
(@Ref_PvEHat,   30161,      0,          8,          1,          1,          'Hood of the Avatar'),
(@Ref_PvEHat,   30152,      0,          8,          1,          1,          'Cowl of the Avatar'),
(@Ref_PvEHat,   29049,      0,          8,          1,          1,          'Light-Collar of the Incarnate'),
(@Ref_PvEHat,   21348,      0,          8,          1,          1,          'Tiara of the Oracle'),
(@Ref_PvEHat,   16921,      0,          8,          1,          1,          'Halo of Transcendence'),
(@Ref_PvEHat,   16813,      0,          8,          1,          1,          'Circlet of Prophecy'),
-- Shaman       
(@Ref_PvEHat,   51237,      0,          8,          1,          1,          'Sanctified Frost Witchs Faceguard'),
(@Ref_PvEHat,   51192,      0,          8,          1,          1,          'Sanctified Frost Witchs Faceguard'),
(@Ref_PvEHat,   50832,      0,          8,          1,          1,          'Frost Witchs Faceguard'),
(@Ref_PvEHat,   48358,      0,          8,          1,          1,          'Thralls Faceguard of Conquest'),
(@Ref_PvEHat,   48852,      0,          8,          1,          1,          'Thralls Faceguard'),
(@Ref_PvEHat,   48847,      0,          8,          1,          1,          'Nobundos Faceguard'),
(@Ref_PvEHat,   48843,      0,          8,          1,          1,          'Thralls Helm'),
(@Ref_PvEHat,   48297,      0,          8,          1,          1,          'Thralls Headpiece'),
(@Ref_PvEHat,   48280,      0,          8,          1,          1,          'Nobundos Faceguard of Conquest'),
(@Ref_PvEHat,   48825,      0,          8,          1,          1,          'Nobundos Headpiece'),
(@Ref_PvEHat,   46212,      0,          8,          1,          1,          'Conquerors Worldbreaker Faceguard'),
(@Ref_PvEHat,   45412,      0,          8,          1,          1,          'Valorous Worldbreaker Faceguard'),
(@Ref_PvEHat,   40521,      0,          8,          1,          1,          'Valorous Earthshatter Faceguard'),
(@Ref_PvEHat,   39602,      0,          8,          1,          1,          'Heroes Earthshatter Faceguard'),
(@Ref_PvEHat,   31012,      0,          8,          1,          1,          'Skyshatter Cover'),
(@Ref_PvEHat,   30190,      0,          8,          1,          1,          'Cataclysm Helm'),
(@Ref_PvEHat,   30171,      0,          8,          1,          1,          'Cataclysm Headpiece'),
(@Ref_PvEHat,   30166,      0,          8,          1,          1,          'Cataclysm Headguard'),
(@Ref_PvEHat,   29028,      0,          8,          1,          1,          'Cyclone Faceguard'),
(@Ref_PvEHat,   21372,      0,          8,          1,          1,          'Stormcallers Diadem'),
(@Ref_PvEHat,   16947,      0,          8,          1,          1,          'Helmet of Ten Storms'),
(@Ref_PvEHat,   16842,      0,          8,          1,          1,          'Earthfury Helmet'),
-- Mage     
(@Ref_PvEHat,   51281,      0,          8,          1,          1,          'Sanctified Bloodmage Hood'),
(@Ref_PvEHat,   51158,      0,          8,          1,          1,          'Sanctified Bloodmage Hood'),
(@Ref_PvEHat,   50276,      0,          8,          1,          1,          'Bloodmage Hood'),
(@Ref_PvEHat,   51715,      0,          8,          1,          1,          'Bloodmage Hood'),
(@Ref_PvEHat,   47764,      0,          8,          1,          1,          'Sunstriders Hood'),
(@Ref_PvEHat,   47748,      0,          8,          1,          1,          'Khadgars Hood of Conquest'),
(@Ref_PvEHat,   48726,      0,          8,          1,          1,          'Khadgars Hood'),
(@Ref_PvEHat,   46129,      0,          8,          1,          1,          'Conquerors Kirin Tor Hood'),
(@Ref_PvEHat,   45365,      0,          8,          1,          1,          'Valorous Kirin Tor Hood'),
(@Ref_PvEHat,   46250,      0,          8,          1,          1,          'Valorous Kirin Tor Hood'),
(@Ref_PvEHat,   40416,      0,          8,          1,          1,          'Valorous Frostfire Circlet'),
(@Ref_PvEHat,   39491,      0,          8,          1,          1,          'Heroes Frostfire Circlet'),
(@Ref_PvEHat,   43777,      0,          8,          1,          1,          'Frostfire Circlet'),
(@Ref_PvEHat,   31056,      0,          8,          1,          1,          'Cowl of the Tempest'),
(@Ref_PvEHat,   30206,      0,          8,          1,          1,          'Cowl of Tirisfal'),
(@Ref_PvEHat,   29076,      0,          8,          1,          1,          'Collar of the Aldor'),
(@Ref_PvEHat,   21347,      0,          8,          1,          1,          'Enigma Circlet'),
(@Ref_PvEHat,   16914,      0,          8,          1,          1,          'Netherwind Crown'),
(@Ref_PvEHat,   16795,      0,          8,          1,          1,          'Arcanist Crown'),
-- Warlock      
(@Ref_PvEHat,   51231,      0,          8,          1,          1,          'Sanctified Dark Coven Hood'),
(@Ref_PvEHat,   51208,      0,          8,          1,          1,          'Sanctified Dark Coven Hood'),
(@Ref_PvEHat,   50241,      0,          8,          1,          1,          'Dark Coven Hood'),
(@Ref_PvEHat,   47778,      0,          8,          1,          1,          'KelThuzads Hood of Conquest'),
(@Ref_PvEHat,   48741,      0,          8,          1,          1,          'KelThuzads Hood'),
(@Ref_PvEHat,   47796,      0,          8,          1,          1,          'Guldans Hood'),
(@Ref_PvEHat,   46140,      0,          8,          1,          1,          'Conquerors Deathbringer Hood'),
(@Ref_PvEHat,   45417,      0,          8,          1,          1,          'Conquerors Deathbringer Hood'),
(@Ref_PvEHat,   40421,      0,          8,          1,          1,          'Valorous Plagueheart Circlet'),
(@Ref_PvEHat,   39496,      0,          8,          1,          1,          'Heroes Plagueheart Circlet'),
(@Ref_PvEHat,   31051,      0,          8,          1,          1,          'Hood of the Malefic'),
(@Ref_PvEHat,   30212,      0,          8,          1,          1,          'Hood of the Corruptor'),
(@Ref_PvEHat,   28963,      0,          8,          1,          1,          'Voidheart Crown'),
(@Ref_PvEHat,   21337,      0,          8,          1,          1,          'Doomcallers Circlet'),
(@Ref_PvEHat,   16929,      0,          8,          1,          1,          'Nemesis Skullcap'),
(@Ref_PvEHat,   16808,      0,          8,          1,          1,          'Felheart Horns'),
-- Druid        
(@Ref_PvEHat,   51290,      0,          8,          1,          1,          'Sanctified Lasherweave Cover'),
(@Ref_PvEHat,   51137,      0,          8,          1,          1,          'Sanctified Lasherweave Cover'),
(@Ref_PvEHat,   50108,      0,          8,          1,          1,          'Lasherweave Cover'),
(@Ref_PvEHat,   48188,      0,          8,          1,          1,          'Runetotems Headguard'),
(@Ref_PvEHat,   48800,      0,          8,          1,          1,          'Malfurions Headguard'),
(@Ref_PvEHat,   48144,      0,          8,          1,          1,          'Runetotems Cover'),
(@Ref_PvEHat,   48102,      0,          8,          1,          1,          'Malfurions Cover of Conquest'),
(@Ref_PvEHat,   48775,      0,          8,          1,          1,          'Malfurions Cover'),
(@Ref_PvEHat,   46184,      0,          8,          1,          1,          'Conquerors Nightsong Cover'),
(@Ref_PvEHat,   46161,      0,          8,          1,          1,          'Conquerors Nightsong Headguard'),
(@Ref_PvEHat,   45346,      0,          8,          1,          1,          'Valorous Nightsong Cover'),
(@Ref_PvEHat,   45356,      0,          8,          1,          1,          'Valorous Nightsong Headguard'),
(@Ref_PvEHat,   40461,      0,          8,          1,          1,          'Valorous Dreamwalker Cover'),
(@Ref_PvEHat,   40473,      0,          8,          1,          1,          'Valorous Dreamwalker Headguard'),
(@Ref_PvEHat,   39531,      0,          8,          1,          1,          'Heroes Dreamwalker Cover'),
(@Ref_PvEHat,   39553,      0,          8,          1,          1,          'Heroes Dreamwalker Headguard'),
(@Ref_PvEHat,   31037,      0,          8,          1,          1,          'Thunderheart Cover'),
(@Ref_PvEHat,   30219,      0,          8,          1,          1,          'Nordrassil Headdress'),
(@Ref_PvEHat,   29086,      0,          8,          1,          1,          'Antlers of Malorne'),
(@Ref_PvEHat,   21353,      0,          8,          1,          1,          'Genesis Helm'),
(@Ref_PvEHat,   16900,      0,          8,          1,          1,          'Stormrage Cover'),
(@Ref_PvEHat,   16834,      0,          8,          1,          1,          'Cenarion Helm');
-- ----------------------------------------------------------------------------------------------------------

-- Reference template - PvP Hat
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_PvPHat;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,   `groupid`,  `mincount`,  `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------
-- Warrior
(@Ref_PvPHat,    51543,      0,          9,          1,           1,          'Wrathful Gladiators Plate Helm'),
(@Ref_PvPHat,    40829,      0,          9,          1,           1,          'Relentless Gladiators Plate Helm'),
(@Ref_PvPHat,    40826,      0,          9,          1,           1,          'Furious Gladiators Plate Helm'),
(@Ref_PvPHat,    40823,      0,          9,          1,           1,          'Deadly Gladiators Plate Helm'),
(@Ref_PvPHat,    40816,      0,          9,          1,           1,          'Savage Gladiators Plate Helm'),
(@Ref_PvPHat,    40819,      0,          9,          1,           1,          'Hateful Gladiators Plate Helm'),
(@Ref_PvPHat,    35068,      0,          9,          1,           1,          'Brutal Gladiators Dreadplate Helm'),
(@Ref_PvPHat,    33730,      0,          9,          1,           1,          'Vengeful Gladiators Plate Helm'),
(@Ref_PvPHat,    30488,      0,          9,          1,           1,          'Merciless Gladiators Plate Helm'),
(@Ref_PvPHat,    35409,      0,          9,          1,           1,          'Savage Plate Helm'),
(@Ref_PvPHat,    28701,      0,          9,          1,           1,          'Grand Marshals Plate Helm'),
(@Ref_PvPHat,    28853,      0,          9,          1,           1,          'High Warlords Plate Helm'),
(@Ref_PvPHat,    16478,      0,          9,          1,           1,          'Field Marshals Plate Helm'),
(@Ref_PvPHat,    16542,      0,          9,          1,           1,          'Warlords Plate Headpiece'),
(@Ref_PvPHat,    23314,      0,          9,          1,           1,          'Lieutenant Commanders Plate Helmet'),
(@Ref_PvPHat,    23244,      0,          9,          1,           1,          'Champions Plate Helm'),
-- Paladin       
(@Ref_PvPHat,    51470,      0,          9,          1,           1,          'Wrathful Gladiators Ornamented Headcover'),
(@Ref_PvPHat,    40831,      0,          9,          1,           1,          'Relentless Gladiators Ornamented Headcover'),
(@Ref_PvPHat,    40933,      0,          9,          1,           1,          'Furious Gladiators Ornamented Headcover'),
(@Ref_PvPHat,    40828,      0,          9,          1,           1,          'Furious Gladiators Scaled Helm'),
(@Ref_PvPHat,    40825,      0,          9,          1,           1,          'Deadly Gladiators Ornamented Headcover'),
(@Ref_PvPHat,    40818,      0,          9,          1,           1,          'Savage Gladiators Ornamented Headcover'),
(@Ref_PvPHat,    40821,      0,          9,          1,           1,          'Hateful Gladiators Ornamented Headcover'),
(@Ref_PvPHat,    35029,      0,          9,          1,           1,          'Brutal Gladiators Lamellar Helm'),
(@Ref_PvPHat,    33697,      0,          9,          1,           1,          'Vengeful Gladiators Lamellar Helm'),
(@Ref_PvPHat,    31997,      0,          9,          1,           1,          'Merciless Gladiators Lamellar Helm'),
(@Ref_PvPHat,    27704,      0,          9,          1,           1,          'Gladiators Lamellar Helm'),
(@Ref_PvPHat,    35404,      0,          9,          1,           1,          'Crusaders Ornamented Headguard'),
(@Ref_PvPHat,    28863,      0,          9,          1,           1,          'High Warlords Scaled Helm'),
(@Ref_PvPHat,    28681,      0,          9,          1,           1,          'Grand Marshals Lamellar Helm'),
(@Ref_PvPHat,    28833,      0,          9,          1,           1,          'High Warlords Lamellar Helm'),
(@Ref_PvPHat,    29604,      0,          9,          1,           1,          'Champions Lamellar Headguard'),
(@Ref_PvPHat,    16474,      0,          9,          1,           1,          'Field Marshals Lamellar Faceguard'),
-- Hunter        
(@Ref_PvPHat,    51460,      0,          9,          1,           1,          'Wrathful Gladiators Chain Helm'),
(@Ref_PvPHat,    41158,      0,          9,          1,           1,          'Relentless Gladiators Chain Helm'),
(@Ref_PvPHat,    41157,      0,          9,          1,           1,          'Furious Gladiators Chain Helm'),
(@Ref_PvPHat,    41156,      0,          9,          1,           1,          'Deadly Gladiators Chain Helm'),
(@Ref_PvPHat,    41154,      0,          9,          1,           1,          'Savage Gladiators Chain Helm'),
(@Ref_PvPHat,    41155,      0,          9,          1,           1,          'Hateful Gladiators Chain Helm'),
(@Ref_PvPHat,    34992,      0,          9,          1,           1,          'Brutal Gladiators Chain Helm'),
(@Ref_PvPHat,    33666,      0,          9,          1,           1,          'Vengeful Gladiators Chain Helm'),
(@Ref_PvPHat,    31962,      0,          9,          1,           1,          'Merciless Gladiators Chain Helm'),
(@Ref_PvPHat,    28331,      0,          9,          1,           1,          'Gladiators Chain Helm'),
(@Ref_PvPHat,    35378,      0,          9,          1,           1,          'Stalkers Chain Helm'),
(@Ref_PvPHat,    28615,      0,          9,          1,           1,          'Grand Marshals Chain Helm'),
(@Ref_PvPHat,    16566,      0,          9,          1,           1,          'Warlords Chain Helmet'),
(@Ref_PvPHat,    16465,      0,          9,          1,           1,          'Field Marshals Chain Helm'),
(@Ref_PvPHat,    16578,      0,          9,          1,           1,          'Field Marshals Mail Helm'),
(@Ref_PvPHat,    23306,      0,          9,          1,           1,          'Lieutenant Commanders Chain Helm'),
(@Ref_PvPHat,    23251,      0,          9,          1,           1,          'Champions Chain Helm'),
-- Rogue         
(@Ref_PvPHat,    51494,      0,          9,          1,           1,          'Wrathful Gladiators Leather Helm'),
(@Ref_PvPHat,    41673,      0,          9,          1,           1,          'Relentless Gladiators Leather Helm'),
(@Ref_PvPHat,    41672,      0,          9,          1,           1,          'Furious Gladiators Leather Helm'),
(@Ref_PvPHat,    41671,      0,          9,          1,           1,          'Deadly Gladiators Leather Helm'),
(@Ref_PvPHat,    41644,      0,          9,          1,           1,          'Savage Gladiators Leather Helm'),
(@Ref_PvPHat,    41670,      0,          9,          1,           1,          'Hateful Gladiators Leather Helm'),
(@Ref_PvPHat,    35033,      0,          9,          1,           1,          'Brutal Gladiators Leather Helm'),
(@Ref_PvPHat,    33701,      0,          9,          1,           1,          'Vengeful Gladiators Leather Helm'),
(@Ref_PvPHat,    31999,      0,          9,          1,           1,          'Merciless Gladiators Leather Helm'),
(@Ref_PvPHat,    25830,      0,          9,          1,           1,          'Gladiators Leather Helm'),
(@Ref_PvPHat,    28127,      0,          9,          1,           1,          'Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    35367,      0,          9,          1,           1,          'Opportunists Leather Helm'),
(@Ref_PvPHat,    28837,      0,          9,          1,           1,          'High Warlords Leather Helm'),
(@Ref_PvPHat,    28685,      0,          9,          1,           1,          'Grand Marshals Leather Helm'),
(@Ref_PvPHat,    16451,      0,          9,          1,           1,          'Field Marshals Dragonhide Helmet'),
(@Ref_PvPHat,    16561,      0,          9,          1,           1,          'Warlords Leather Helm'),
(@Ref_PvPHat,    23312,      0,          9,          1,           1,          'Lieutenant Commanders Leather Helm'),
(@Ref_PvPHat,    23257,      0,          9,          1,           1,          'Champions Leather Helm'),
-- Priest        
(@Ref_PvPHat,    51484,      0,          9,          1,           1,          'Wrathful Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    41855,      0,          9,          1,           1,          'Relentless Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    41854,      0,          9,          1,           1,          'Furious Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    41853,      0,          9,          1,           1,          'Deadly Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    41848,      0,          9,          1,           1,          'Savage Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    41852,      0,          9,          1,           1,          'Hateful Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    35054,      0,          9,          1,           1,          'Brutal Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    33718,      0,          9,          1,           1,          'Vengeful Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    32016,      0,          9,          1,           1,          'Merciless Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    27708,      0,          9,          1,           1,          'Gladiators Mooncloth Hood'),
(@Ref_PvPHat,    35333,      0,          9,          1,           1,          'Mooncloth Cowl'),
(@Ref_PvPHat,    28705,      0,          9,          1,           1,          'Grand Marshals Mooncloth Cowl'),
(@Ref_PvPHat,    28818,      0,          9,          1,           1,          'High Warlords Dreadweave Hood'),
(@Ref_PvPHat,    17623,      0,          9,          1,           1,          'Warlords Satin Cowl'),
(@Ref_PvPHat,    17602,      0,          9,          1,           1,          'Field Marshals Headdress'),
(@Ref_PvPHat,    23316,      0,          9,          1,           1,          'Lieutenant Commanders Satin Hood'),
(@Ref_PvPHat,    23261,      0,          9,          1,           1,          'Champions Satin Hood'),
-- Shaman        
(@Ref_PvPHat,    51499,      0,          9,          1,           1,          'Wrathful Gladiators Linked Helm'),
(@Ref_PvPHat,    41014,      0,          9,          1,           1,          'Relentless Gladiators Linked Helm'),
(@Ref_PvPHat,    41013,      0,          9,          1,           1,          'Furious Gladiators Linked Helm'),
(@Ref_PvPHat,    41012,      0,          9,          1,           1,          'Deadly Gladiators Linked Helm'),
(@Ref_PvPHat,    41010,      0,          9,          1,           1,          'Savage Gladiators Linked Helm'),
(@Ref_PvPHat,    41011,      0,          9,          1,           1,          'Hateful Gladiators Linked Helm'),
(@Ref_PvPHat,    35079,      0,          9,          1,           1,          'Brutal Gladiators Ringmail Helm'),
(@Ref_PvPHat,    35044,      0,          9,          1,           1,          'Brutal Gladiators Linked Helm'),
(@Ref_PvPHat,    33708,      0,          9,          1,           1,          'Vengeful Gladiators Linked Helm'),
(@Ref_PvPHat,    32006,      0,          9,          1,           1,          'Merciless Gladiators Linked Helm'),
(@Ref_PvPHat,    31400,      0,          9,          1,           1,          'Gladiators Ringmail Helm'),
(@Ref_PvPHat,    25998,      0,          9,          1,           1,          'Gladiators Linked Helm'),
(@Ref_PvPHat,    35383,      0,          9,          1,           1,          'Seers Linked Helm'),
(@Ref_PvPHat,    23259,      0,          9,          1,           1,          'Champions Mail Headguard'),
-- Mage      
(@Ref_PvPHat,    51465,      0,          9,          1,           1,          'Wrathful Gladiators Silk Cowl'),
(@Ref_PvPHat,    41947,      0,          9,          1,           1,          'Relentless Gladiators Silk Cowl'),
(@Ref_PvPHat,    41946,      0,          9,          1,           1,          'Furious Gladiators Silk Cowl'),
(@Ref_PvPHat,    41945,      0,          9,          1,           1,          'Deadly Gladiators Silk Cowl'),
(@Ref_PvPHat,    41943,      0,          9,          1,           1,          'Savage Gladiators Silk Cowl'),
(@Ref_PvPHat,    41944,      0,          9,          1,           1,          'Hateful Gladiators Silk Cowl'),
(@Ref_PvPHat,    35097,      0,          9,          1,           1,          'Brutal Gladiators Silk Cowl'),
(@Ref_PvPHat,    33758,      0,          9,          1,           1,          'Vengeful Gladiators Silk Cowl'),
(@Ref_PvPHat,    32048,      0,          9,          1,           1,          'Merciless Gladiators Silk Cowl'),
(@Ref_PvPHat,    25855,      0,          9,          1,           1,          'Gladiators Silk Cowl'),
(@Ref_PvPHat,    35344,      0,          9,          1,           1,          'Evokers Silk Cowl'),
(@Ref_PvPHat,    28715,      0,          9,          1,           1,          'Grand Marshals Silk Cowl'),
(@Ref_PvPHat,    16441,      0,          9,          1,           1,          'Field Marshals Coronet'),
(@Ref_PvPHat,    16533,      0,          9,          1,           1,          'High Warlords Silk Cowl'),
(@Ref_PvPHat,    23318,      0,          9,          1,           1,          'Lieutenant Commanders Silk Cowl'),
(@Ref_PvPHat,    23263,      0,          9,          1,           1,          'Champions Silk Cowl'),
-- Warlock       
(@Ref_PvPHat,    51538,      0,          9,          1,           1,          'Wrathful Gladiators Felweave Cowl'),
(@Ref_PvPHat,    41994,      0,          9,          1,           1,          'Relentless Gladiators Felweave Cowl'),
(@Ref_PvPHat,    41993,      0,          9,          1,           1,          'Furious Gladiators Felweave Cowl'),
(@Ref_PvPHat,    41992,      0,          9,          1,           1,          'Deadly Gladiators Felweave Cowl'),
(@Ref_PvPHat,    41990,      0,          9,          1,           1,          'Savage Gladiators Felweave Cowl'),
(@Ref_PvPHat,    41991,      0,          9,          1,           1,          'Hateful Gladiators Felweave Cowl'),
(@Ref_PvPHat,    35004,      0,          9,          1,           1,          'Brutal Gladiators Dreadweave Hood'),
(@Ref_PvPHat,    33677,      0,          9,          1,           1,          'Vengeful Gladiators Dreadweave Hood'),
(@Ref_PvPHat,    31980,      0,          9,          1,           1,          'Merciless Gladiators Felweave Cowl'),
(@Ref_PvPHat,    31974,      0,          9,          1,           1,          'Merciless Gladiators Dreadweave Hood'),
(@Ref_PvPHat,    30187,      0,          9,          1,           1,          'Gladiators Felweave Cowl'),
(@Ref_PvPHat,    24553,      0,          9,          1,           1,          'Gladiators Dreadweave Hood'),
(@Ref_PvPHat,    35329,      0,          9,          1,           1,          'Dreadweave Hood'),
(@Ref_PvPHat,    28625,      0,          9,          1,           1,          'Grand Marshals Dreadweave Hood'),
(@Ref_PvPHat,    17578,      0,          9,          1,           1,          'Field Marshals Coronal'),
(@Ref_PvPHat,    17591,      0,          9,          1,           1,          'Warlords Dreadweave Hood'),
(@Ref_PvPHat,    23310,      0,          9,          1,           1,          'Lieutenant Commanders Dreadweave Cowl'),
(@Ref_PvPHat,    23255,      0,          9,          1,           1,          'Champions Dreadweave Cowl'),
-- Druid         
(@Ref_PvPHat,    51421,      0,          9,          1,           1,          'Wrathful Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    41322,      0,          9,          1,           1,          'Relentless Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    41327,      0,          9,          1,           1,          'Furious Gladiators Wyrmhide Helm'),
(@Ref_PvPHat,    41321,      0,          9,          1,           1,          'Furious Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    41320,      0,          9,          1,           1,          'Deadly Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    41269,      0,          9,          1,           1,          'Savage Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    41319,      0,          9,          1,           1,          'Hateful Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    35023,      0,          9,          1,           1,          'Brutal Gladiators Kodohide Helm'),
(@Ref_PvPHat,    34999,      0,          9,          1,           1,          'Brutal Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    33691,      0,          9,          1,           1,          'Vengeful Gladiators Kodohide Helm'),
(@Ref_PvPHat,    33672,      0,          9,          1,           1,          'Vengeful Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    31968,      0,          9,          1,           1,          'Merciless Gladiators Dragonhide Helm'),
(@Ref_PvPHat,    35357,      0,          9,          1,           1,          'Dragonhide Helm'),
(@Ref_PvPHat,    28812,      0,          9,          1,           1,          'High Warlords Dragonhide Helm'),
(@Ref_PvPHat,    28619,      0,          9,          1,           1,          'Grand Marshals Dragonhide Helm'),
(@Ref_PvPHat,    16550,      0,          9,          1,           1,          'Warlords Dragonhide Helmet'),
(@Ref_PvPHat,    23308,      0,          9,          1,           1,          'Lieutenant Commanders Dragonhide Headguard'),
(@Ref_PvPHat,    23253,      0,          9,          1,           1,          'Champions Dragonhide Headguard');
-- ----------------------------------------------------------------------------------------------------------

-- Reference template - Rings of Power
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_Rings;
INSERT INTO `reference_loot_template` 
-- --------------------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,   `groupid`,  `mincount`,   `maxcount`, `comment`) VALUES
-- --------------------------------------------------------------------------------------------------------------------
(@Ref_Rings,    46010,      0,          10,         1,            1,          'Grip of Madness'),
(@Ref_Rings,    50424,      0,          10,         1,            1,          'Twist of Fate'),
(@Ref_Rings,    51558,      0,          10,         1,            1,          'Mind''s Eye'),
(@Ref_Rings,    31921,      0,          10,         1,            1,          'Voice of the Prophet'),
(@Ref_Rings,    47224,      0,          10,         1,            1,          'Blademaster''s Band'),
(@Ref_Rings,    33496,      0,          10,         1,            1,          'Infinite Loop'),
(@Ref_Rings,    50398,      0,          10,         1,            1,          'Mortal Coil'),
(@Ref_Rings,    50614,      0,          10,         1,            1,          'Grand Executioner'),
(@Ref_Rings,    45608,      0,          10,         1,            1,          'Guiding Light'),
(@Ref_Rings,    45871,      0,          10,         1,            1,          'Seal of Azeroth'),
(@Ref_Rings,    45471,      0,          10,         1,            1,          'Gathering Storm'),
(@Ref_Rings,    45297,      0,          10,         1,            1,          'Lifewarden'),
(@Ref_Rings,    51001,      0,          10,         1,            1,          'Pins and Needles'),
(@Ref_Rings,    34230,      0,          10,         1,            1,          'Safe Haven'),
(@Ref_Rings,    34837,      0,          10,         1,            1,          'Lifestream Band'),
(@Ref_Rings,    33498,      0,          10,         1,            1,          'Emerald Dreamcatcher'),
(@Ref_Rings,    45326,      0,          10,         1,            1,          'Ring of the Aesir'),
(@Ref_Rings,    47700,      0,          10,         1,            1,          'Saving Grace'),
(@Ref_Rings,    34625,      0,          10,         1,            1,          'Hope''s Diamond'),
(@Ref_Rings,    45157,      0,          10,         1,            1,          'Broken Promise');
-- --------------------------------------------------------------------------------------------------------------------

-- Reference template - Pets and toys
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_PetToy;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------
(@Ref_PetToy,   32542,      0,          7,          1,          1,          'Imp in a Ball'),
(@Ref_PetToy,   33079,      0,          7,          1,          1,          'Murloc Costume'),
(@Ref_PetToy,   44606,      0,          7,          1,          1,          'Toy Train Set'),
(@Ref_PetToy,   45057,      0,          7,          1,          1,          'Wind-Up Train Wrecker'),
(@Ref_PetToy,   45063,      0,          7,          1,          1,          'Foam Sword Rack'),
(@Ref_PetToy,   46725,      0,          7,          1,          1,          'Red Rider Air Rifle'),
(@Ref_PetToy,   46780,      0,          7,          1,          1,          'Ogre Pinata'),
(@Ref_PetToy,   34425,      0,          7,          1,          1,          'Clockwork Rocket Bot'),
(@Ref_PetToy,   34492,      0,          7,          1,          1,          'Rocket Chicken'),
(@Ref_PetToy,   34493,      0,          7,          1,          1,          'Dragon Kite'),
(@Ref_PetToy,   45002,      0,          7,          1,          1,          'Mechanopeep'),
(@Ref_PetToy,   46767,      0,          7,          1,          1,          'Warbot Ignition Key'),
(@Ref_PetToy,   49287,      0,          7,          1,          1,          'Tuskarr Kite'),
(@Ref_PetToy,   54436,      0,          7,          1,          1,          'Blue Clockwork Rocket Bot'),
(@Ref_PetToy,   54847,      0,          7,          1,          1,          'Lil XT'),
(@Ref_PetToy,   56806,      0,          7,          1,          1,          'Mini Thor'),
(@Ref_PetToy,   32617,      0,          7,          1,          1,          'Sleepy Willy'),
(@Ref_PetToy,   34955,      0,          7,          1,          1,          'Scorched Stone'),
(@Ref_PetToy,   39973,      0,          7,          1,          1,          'Ghostly Skull'),
(@Ref_PetToy,   44982,      0,          7,          1,          1,          'Enchanted Broom'),
(@Ref_PetToy,   46821,      0,          7,          1,          1,          'Shimmering Wyrmling'),
(@Ref_PetToy,   48527,      0,          7,          1,          1,          'Enchanted Onyx'),
(@Ref_PetToy,   49646,      0,          7,          1,          1,          'Core Hound Pup'),
(@Ref_PetToy,   49693,      0,          7,          1,          1,          'Lil Phylactery'),
(@Ref_PetToy,   53641,      0,          7,          1,          1,          'Ice Chip');
-- ----------------------------------------------------------------------------------------------------------

-- Reference template - Darkmoon Cards
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_Darkmoon;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------
(@Ref_Darkmoon, 19276,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19278,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19279,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19280,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19281,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19282,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19283,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19284,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31882,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31883,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31884,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31885,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31886,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31887,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31888,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31889,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31910,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31911,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31912,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31913,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31915,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31916,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31917,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31918,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44260,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44261,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44262,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44263,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44264,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44265,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44266,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44267,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19268,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19269,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19270,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19271,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19272,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19273,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19274,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19275,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44286,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44287,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44288,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44289,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44290,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44291,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44292,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44293,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31892,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31893,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31894,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31895,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31896,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31898,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31899,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31900,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19227,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19230,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19231,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19232,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19233,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19234,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19235,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19236,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31901,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31902,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31903,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31904,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31905,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31906,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31908,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31909,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19258,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19259,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19260,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19261,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19262,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19263,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19264,      0,          6,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19265,      0,          6,          1,          1,          'Darkmoon Card');
-- ----------------------------------------------------------------------------------------------------------
