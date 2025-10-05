-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Loot Boxes
-- -----------------------------------

-- Loot Table IDs
SET
@Ref_Potions         = 48202,
@Ref_Elixirs         = 48203,
@Ref_Bombs           = 48204,
@Ref_PetToy          = 48205,
@Ref_EngiItem        = 48206,
@Ref_Darkmoon        = 48207,
@Ref_PvEHat          = 48208,
@Ref_PvpHat          = 48209,
@Ref_Rings           = 48211;

-- Mystery Box
SET
@Entry          = 41426,
@Quality        = 4,
@Money          = 0,
@Name           = 'Magic Mystery Box',
@Description    = 'Contains random items.';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money where `entry`=@Entry;

-- Loot template - Mystery Box
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,     `reference`,        `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------------------------------
-- Guaranteed
(@Entry,    40752,      0,                  100,        0,          3,          3,          '3x Emblem of Heroism'), -- PvE only reward
(@Entry,    43102,      0,                  100,        0,          1,          1,          '1x Frozen Orb'),
(@Entry,    34052,      0,                  100,        0,          4,          4,          '4x Dream Shard'),
(@Entry,    51316,      @Ref_Darkmoon,      100,        0,          1,          1,          'Darkmoon Card'),
-- Grouped
(@Entry,    20602,      0,                    0,        1,          1,          1,          'Field Supplies'),
(@Entry,    10456,      0,                    0,        1,          1,          1,          'Big Bomg Bag'),
-- Chance
(@Entry,     10569,     0,                   25,        5,          1,          1,          'PvE Hat'), -- PvE only reward
(@Entry,        4,      @Ref_PetToy,         10,        7,          1,          1,          'Pet/Toy'),
(@Entry,        5,      @Ref_Rings,           5,       10,          1,          1,          'Ring of Power'),
(@Entry,    46114,      0,                    1,       11,          1,          1,          'Mount Certificate');
-- ----------------------------------------------------------------------------------------------------------------------------------------------

-- Spoils of War
SET
@Entry          = 45986,
@Quality        = 4,
@Money          = 0,
@Name           = 'Spoils of War',
@Description    = 'Contains random items.';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money where `entry`=@Entry;

-- Loot template - Spoils of War
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ---------------------------------------------------------------------------------------------------------------------------------
(`Entry`,     `Item`,     `reference`,        `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ---------------------------------------------------------------------------------------------------------------------------------
-- Guaranteed
(@Entry,      37836,      0,                 100,        0,          5,          5,          '5x Honor Coin'), -- PvP only reward
(@Entry,      43102,      0,                 100,        0,          1,          1,          '1x Frozen Orb'),
(@Entry,      34052,      0,                 100,        0,          4,          4,          '4x Dream Shard'),
(@Entry,      51316,      @Ref_Darkmoon,     100,        0,          1,          1,          'Darkmoon Card'),
-- Grouped
(@Entry,      20602,      0,                   0,        1,          1,          1,          'Field Supplies'),
(@Entry,      10456,      0,                   0,        1,          1,          1,          'Big Bomg Bag'),
-- Chance
(@Entry,      21512,      0,                  25,        5,          1,          1,          'PvP Hat'), -- PvP only reward
-- Chance
(@Entry,          4,      @Ref_PetToy,        15,        7,          1,          1,          'Pet/Toy'),
(@Entry,          5,      @Ref_Rings,          5,       10,          1,          1,          'Ring of Power'),
(@Entry,      46114,      0,                   1,       11,          1,          1,          'Mount Certificate');
-- ---------------------------------------------------------------------------------------------------------------------------------

-- Field Supplies
SET
@Entry          = 20602,
@Quality        = 3,
@Money          = 0,
@Name           = 'Field Supplies',
@Description    = 'An assortment of potions and elixirs.';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money where `entry`=@Entry;

-- Loot template - Field Supplies
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,         `reference`,    `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Entry,    @Ref_Potions,   @Ref_Potions,   100,        1,          1,          1,          'Random Potion'),
(@Entry,    @Ref_Elixirs,   @Ref_Elixirs,   100,        2,          1,          1,          'Random Elixir');
-- ----------------------------------------------------------------------------------------------------------------------

-- Reference template - Field supplies potions
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_Potions;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,         `Item`,     `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Ref_Potions,    2459,       0,          1,          2,          2,          'Swiftness Potion'),
(@Ref_Potions,    5634,       0,          1,          2,          2,          'Free Action Potion'),
(@Ref_Potions,    6048,       0,          1,          2,          2,          'Shadow Protection Potion'),
(@Ref_Potions,    6051,       0,          1,          2,          2,          'Holy Protection Potion'),
(@Ref_Potions,    1450,       0,          1,          2,          2,          'Potion of Fervor'),
(@Ref_Potions,    3384,       0,          1,          2,          2,          'Minor Magic Resistance Potion');
-- ----------------------------------------------------------------------------------------------------------------------

-- Reference template - Field supplies elixirs
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_Elixirs;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,         `Item`,     `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Ref_Elixirs,    3391,       0,          2,          2,          2,          'Elixir of Ogres Strength'),
(@Ref_Elixirs,    6373,       0,          2,          2,          2,          'Elixir of Firepower'),
(@Ref_Elixirs,    3390,       0,          2,          2,          2,          'Elixir of Lesser Agility'),
(@Ref_Elixirs,    3389,       0,          2,          2,          2,          'Elixir of Defense'),
(@Ref_Elixirs,    3388,       0,          2,          2,          2,          'Strong Trolls Blood Elixir'),
(@Ref_Elixirs,    45621,      0,          2,          2,          2,          'Elixir of Minor Accuracy'),
(@Ref_Elixirs,    3383,       0,          2,          2,          2,          'Elixir of Wisdom'),
(@Ref_Elixirs,    6662,       0,          2,          2,          2,          'Elixir of Giant Growth'),
(@Ref_Elixirs,    3825,       0,          2,          2,          2,          'Elixir of Fortitude');
-- ----------------------------------------------------------------------------------------------------------------------

-- Big Bomb Bag
SET
@Entry          = 10456,
@Quality        = 2,
@Money          = 0,
@Name           = 'Big Bomb Bag',
@Description    = 'WARNING: Contains explosives!';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money where `entry`=@Entry;

-- Loot template - Big Bomb Bag
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,     `reference`,    `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Entry,    1,          @Ref_Bombs,     100,        1,          2,          2,          'Engineering Bomb'),
(@Entry,    2,          @Ref_EngiItem,  5,          2,          1,          1,          'Engineering Item');
-- ----------------------------------------------------------------------------------------------------------------------

-- Reference template - Big Bomb Bag Bombs
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_Bombs;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,  `groupid`,  `mincount`,  `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------
(@Ref_Bombs,    10586,      0,          1,          2,          2,          'The Big One'),
(@Ref_Bombs,    10646,      0,          1,          1,          1,          'Goblin Sapper Charge'),
(@Ref_Bombs,    4395,       0,          1,          2,          2,          'Goblin Land Mine'),
(@Ref_Bombs,    10514,      0,          1,          2,          2,          'Mithril Frag Bomb');
-- ----------------------------------------------------------------------------------------------------------

-- Reference template - Big Bomb Bag Engi Items
DELETE FROM `reference_loot_template` WHERE `entry` = @Ref_EngiItem;
INSERT INTO `reference_loot_template` 
-- ----------------------------------------------------------------------------------------------------------
(`Entry`,       `Item`,     `Chance`,  `groupid`,  `mincount`,  `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------
(@Ref_EngiItem,  40768,      40,        2,          1,           1,          'MOLL_E'),
(@Ref_EngiItem,  49040,      40,        2,          1,           1,          'Jeeves'),
(@Ref_EngiItem,  41508,      10,        2,          1,           1,          'Mechano Hog'),
(@Ref_EngiItem,  44413,      10,        2,          1,           1,          'Mekgineers Chopper');
-- ----------------------------------------------------------------------------------------------------------

-- Bag of Shards
SET
@Entry          = 41888,
@Quality        = 4,
@Money          = 0,
@Name           = 'Bag of Emblems',
@Description    = 'Contains 10x Emblems of Heroism.';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money where `entry`=@Entry;

-- Loot template - Bag of Shards
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,     `reference`,    `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
(@Entry,    40752,      0,              0,          1,          10,         10,         '10x Emblem of Heroism');
-- ----------------------------------------------------------------------------------------------------------------------

-- Hat Box PvE
SET
@Entry          = 10569,
@Quality        = 3,
@Money          = 0,
@Name           = 'Hat Box',
@Description    = 'Contains a special hat!';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money, `maxcount`=0 where `entry`=@Entry;

-- Loot template - Hat Box PvE
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,    `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
-- Warrior
(@Entry,   51221,      0,          5,          1,          1,          'Sanctified Ymirjar Lords Greathelm'),
(@Entry,   51212,      0,          5,          1,          1,          'Sanctified Ymirjar Lords Greathelm'),
(@Entry,   50080,      0,          5,          1,          1,          'Ymirjar Lords Greathelm'),
(@Entry,   48876,      0,          5,          1,          1,          'Wrynns Greathelm'),
(@Entry,   48388,      0,          5,          1,          1,          'Hellscreams Greathelm'),
(@Entry,   48371,      0,          5,          1,          1,          'Wrynns Greathelm of Conquest'),
(@Entry,   48867,      0,          5,          1,          1,          'Wrynns Helmet'),
(@Entry,   46151,      0,          5,          1,          1,          'Conquerors Siegebreaker Greathelm'),
(@Entry,   45425,      0,          5,          1,          1,          'Valorous Siegebreaker Greathelm'),
(@Entry,   40528,      0,          5,          1,          1,          'Valorous Dreadnaught Greathelm'),
(@Entry,   39605,      0,          5,          1,          1,          'Dreadnaught Helmet'),
(@Entry,   30972,      0,          5,          1,          1,          'Onslaught Battle-Helm'),
(@Entry,   30115,      0,          5,          1,          1,          'Destroyer Battle-Helm'),
(@Entry,   29011,      0,          5,          1,          1,          'Warbringer Battle-Helm'),
(@Entry,   21329,      0,          5,          1,          1,          'Conquerors Crown'),
(@Entry,   16963,      0,          5,          1,          1,          'Helm of Wrath'),
(@Entry,   16866,      0,          5,          1,          1,          'Helm of Might'),
-- Paladin      
(@Entry,   51266,      0,          5,          1,          1,          'Sanctified Lightsworn Faceguard'),
(@Entry,   51162,      0,          5,          1,          1,          'Sanctified Lightsworn Faceguard'),
(@Entry,   50326,      0,          5,          1,          1,          'Lightsworn Faceguard'),
(@Entry,   48928,      0,          5,          1,          1,          'Turalyons Faceguard'),
(@Entry,   48917,      0,          5,          1,          1,          'Turalyons Helm'),
(@Entry,   48587,      0,          5,          1,          1,          'Liadrins Faceguard'),
(@Entry,   48564,      0,          5,          1,          1,          'Turalyons Faceguard of Conquest'),
(@Entry,   48902,      0,          5,          1,          1,          'Turalyons Headpiece'),
(@Entry,   46156,      0,          5,          1,          1,          'Conquerors Aegis Faceguard'),
(@Entry,   45372,      0,          5,          1,          1,          'Valorous Aegis Faceguard'),
(@Entry,   46215,      0,          5,          1,          1,          'Conquerors Aegis Helm'),
(@Entry,   40571,      0,          5,          1,          1,          'Valorous Redemption Faceguard'),
(@Entry,   39628,      0,          5,          1,          1,          'Heroes Redemption Faceguard'),
(@Entry,   30988,      0,          5,          1,          1,          'Lightbringer Greathelm'),
(@Entry,   30987,      0,          5,          1,          1,          'Lightbringer Faceguard'),
(@Entry,   30125,      0,          5,          1,          1,          'Crystalforge Faceguard'),
(@Entry,   29061,      0,          5,          1,          1,          'Justicar Crown'),
(@Entry,   21387,      0,          5,          1,          1,          'Avengers Crown'),
(@Entry,   16955,      0,          5,          1,          1,          'Judgement Crown'),
(@Entry,   16854,      0,          5,          1,          1,          'Lawbringer Helm'),
-- Hunter       
(@Entry,   51286,      0,          5,          1,          1,          'Sanctified AhnKahar Blood Hunters Headpiece'),
(@Entry,   51153,      0,          5,          1,          1,          'Sanctified AhnKahar Blood Hunters Headpiece'),
(@Entry,   50115,      0,          5,          1,          1,          'AhnKahar Blood Hunters Headpiece'),
(@Entry,   48267,      0,          5,          1,          1,          'Windrunners Headpiece'),
(@Entry,   48250,      0,          5,          1,          1,          'Windrunners Headpiece of Conquest'),
(@Entry,   48820,      0,          5,          1,          1,          'Windrunners Headpiece'),
(@Entry,   46143,      0,          5,          1,          1,          'Conquerors Scourgestalker Headpiece'),
(@Entry,   46274,      0,          5,          1,          1,          'Conquerors Scourgestalker Headpiece'),
(@Entry,   45361,      0,          5,          1,          1,          'Valorous Scourgestalker Headpiece'),
(@Entry,   40505,      0,          5,          1,          1,          'Valorous Cryptstalker Headpiece'),
(@Entry,   39578,      0,          5,          1,          1,          'Heroes Cryptstalker Headpiece'),
(@Entry,   31003,      0,          5,          1,          1,          'Gronnstalkers Helmet'),
(@Entry,   30141,      0,          5,          1,          1,          'Rift Stalker Helm'),
(@Entry,   29081,      0,          5,          1,          1,          'Demon Stalker Greathelm'),
(@Entry,   21366,      0,          5,          1,          1,          'Strikers Diadem'),
(@Entry,   16939,      0,          5,          1,          1,          'Dragonstalkers Helm'),
(@Entry,   16846,      0,          5,          1,          1,          'Giantstalkers Helmet'),
-- Rogue        
(@Entry,   51252,      0,          5,          1,          1,          'Sanctified Shadowblade Helmet'),
(@Entry,   51187,      0,          5,          1,          1,          'Sanctified Shadowblade Helmet'),
(@Entry,   50089,      0,          5,          1,          1,          'Shadowblade Helmet'),
(@Entry,   48235,      0,          5,          1,          1,          'Garonas Helmet'),
(@Entry,   48218,      0,          5,          1,          1,          'VanCleefs Helmet of Conquest'),
(@Entry,   48811,      0,          5,          1,          1,          'VanCleefs Helmet'),
(@Entry,   46125,      0,          5,          1,          1,          'Conquerors Terrorblade Helmet'),
(@Entry,   46290,      0,          5,          1,          1,          'Conquerors Terrorblade Helmet'),
(@Entry,   45398,      0,          5,          1,          1,          'Valorous Terrorblade Helmet'),
(@Entry,   40499,      0,          5,          1,          1,          'Valorous Bonescythe Helmet'),
(@Entry,   39561,      0,          5,          1,          1,          'Heroes Bonescythe Helmet'),
(@Entry,   31027,      0,          5,          1,          1,          'Slayers Helm'),
(@Entry,   30146,      0,          5,          1,          1,          'Deathmantle Helm'),
(@Entry,   29044,      0,          5,          1,          1,          'Netherblade Facemask'),
(@Entry,   21360,      0,          5,          1,          1,          'Deathdealers Helm'),
(@Entry,   16908,      0,          5,          1,          1,          'Bloodfang Hood'),
(@Entry,   16821,      0,          5,          1,          1,          'Nightslayer Cover'),
-- Priest       
(@Entry,   51255,      0,          5,          1,          1,          'Sanctified Crimson Acolyte Cowl'),
(@Entry,   51178,      0,          5,          1,          1,          'Sanctified Crimson Acolyte Cowl'),
(@Entry,   50392,      0,          5,          1,          1,          'Crimson Acolyte Cowl'),
(@Entry,   48058,      0,          5,          1,          1,          'Zabras Circlet'),
(@Entry,   47914,      0,          5,          1,          1,          'Velens Circlet of Conquest'),
(@Entry,   48745,      0,          5,          1,          1,          'Velens Circlet'),
(@Entry,   46172,      0,          5,          1,          1,          'Conquerors Circlet of Sanctification'),
(@Entry,   46230,      0,          5,          1,          1,          'Conquerors Circlet of Sanctification'),
(@Entry,   45386,      0,          5,          1,          1,          'Valorous Circlet of Sanctification'),
(@Entry,   39514,      0,          5,          1,          1,          'Crown of Faith'),
(@Entry,   31063,      0,          5,          1,          1,          'Cowl of Absolution'),
(@Entry,   30161,      0,          5,          1,          1,          'Hood of the Avatar'),
(@Entry,   30152,      0,          5,          1,          1,          'Cowl of the Avatar'),
(@Entry,   29049,      0,          5,          1,          1,          'Light-Collar of the Incarnate'),
(@Entry,   21348,      0,          5,          1,          1,          'Tiara of the Oracle'),
(@Entry,   16921,      0,          5,          1,          1,          'Halo of Transcendence'),
(@Entry,   16813,      0,          5,          1,          1,          'Circlet of Prophecy'),
-- Shaman       
(@Entry,   51237,      0,          5,          1,          1,          'Sanctified Frost Witchs Faceguard'),
(@Entry,   51192,      0,          5,          1,          1,          'Sanctified Frost Witchs Faceguard'),
(@Entry,   50832,      0,          5,          1,          1,          'Frost Witchs Faceguard'),
(@Entry,   48358,      0,          5,          1,          1,          'Thralls Faceguard of Conquest'),
(@Entry,   48852,      0,          5,          1,          1,          'Thralls Faceguard'),
(@Entry,   48847,      0,          5,          1,          1,          'Nobundos Faceguard'),
(@Entry,   48843,      0,          5,          1,          1,          'Thralls Helm'),
(@Entry,   48297,      0,          5,          1,          1,          'Thralls Headpiece'),
(@Entry,   48280,      0,          5,          1,          1,          'Nobundos Faceguard of Conquest'),
(@Entry,   48825,      0,          5,          1,          1,          'Nobundos Headpiece'),
(@Entry,   46212,      0,          5,          1,          1,          'Conquerors Worldbreaker Faceguard'),
(@Entry,   45412,      0,          5,          1,          1,          'Valorous Worldbreaker Faceguard'),
(@Entry,   40521,      0,          5,          1,          1,          'Valorous Earthshatter Faceguard'),
(@Entry,   39602,      0,          5,          1,          1,          'Heroes Earthshatter Faceguard'),
(@Entry,   31012,      0,          5,          1,          1,          'Skyshatter Cover'),
(@Entry,   30190,      0,          5,          1,          1,          'Cataclysm Helm'),
(@Entry,   30171,      0,          5,          1,          1,          'Cataclysm Headpiece'),
(@Entry,   30166,      0,          5,          1,          1,          'Cataclysm Headguard'),
(@Entry,   29028,      0,          5,          1,          1,          'Cyclone Faceguard'),
(@Entry,   21372,      0,          5,          1,          1,          'Stormcallers Diadem'),
(@Entry,   16947,      0,          5,          1,          1,          'Helmet of Ten Storms'),
(@Entry,   16842,      0,          5,          1,          1,          'Earthfury Helmet'),
-- Mage     
(@Entry,   51281,      0,          5,          1,          1,          'Sanctified Bloodmage Hood'),
(@Entry,   51158,      0,          5,          1,          1,          'Sanctified Bloodmage Hood'),
(@Entry,   50276,      0,          5,          1,          1,          'Bloodmage Hood'),
(@Entry,   51715,      0,          5,          1,          1,          'Bloodmage Hood'),
(@Entry,   47764,      0,          5,          1,          1,          'Sunstriders Hood'),
(@Entry,   47748,      0,          5,          1,          1,          'Khadgars Hood of Conquest'),
(@Entry,   48726,      0,          5,          1,          1,          'Khadgars Hood'),
(@Entry,   46129,      0,          5,          1,          1,          'Conquerors Kirin Tor Hood'),
(@Entry,   45365,      0,          5,          1,          1,          'Valorous Kirin Tor Hood'),
(@Entry,   46250,      0,          5,          1,          1,          'Valorous Kirin Tor Hood'),
(@Entry,   40416,      0,          5,          1,          1,          'Valorous Frostfire Circlet'),
(@Entry,   39491,      0,          5,          1,          1,          'Heroes Frostfire Circlet'),
(@Entry,   43777,      0,          5,          1,          1,          'Frostfire Circlet'),
(@Entry,   31056,      0,          5,          1,          1,          'Cowl of the Tempest'),
(@Entry,   30206,      0,          5,          1,          1,          'Cowl of Tirisfal'),
(@Entry,   29076,      0,          5,          1,          1,          'Collar of the Aldor'),
(@Entry,   21347,      0,          5,          1,          1,          'Enigma Circlet'),
(@Entry,   16914,      0,          5,          1,          1,          'Netherwind Crown'),
(@Entry,   16795,      0,          5,          1,          1,          'Arcanist Crown'),
-- Warlock      
(@Entry,   51231,      0,          5,          1,          1,          'Sanctified Dark Coven Hood'),
(@Entry,   51208,      0,          5,          1,          1,          'Sanctified Dark Coven Hood'),
(@Entry,   50241,      0,          5,          1,          1,          'Dark Coven Hood'),
(@Entry,   47778,      0,          5,          1,          1,          'KelThuzads Hood of Conquest'),
(@Entry,   48741,      0,          5,          1,          1,          'KelThuzads Hood'),
(@Entry,   47796,      0,          5,          1,          1,          'Guldans Hood'),
(@Entry,   46140,      0,          5,          1,          1,          'Conquerors Deathbringer Hood'),
(@Entry,   45417,      0,          5,          1,          1,          'Conquerors Deathbringer Hood'),
(@Entry,   40421,      0,          5,          1,          1,          'Valorous Plagueheart Circlet'),
(@Entry,   39496,      0,          5,          1,          1,          'Heroes Plagueheart Circlet'),
(@Entry,   31051,      0,          5,          1,          1,          'Hood of the Malefic'),
(@Entry,   30212,      0,          5,          1,          1,          'Hood of the Corruptor'),
(@Entry,   28963,      0,          5,          1,          1,          'Voidheart Crown'),
(@Entry,   21337,      0,          5,          1,          1,          'Doomcallers Circlet'),
(@Entry,   16929,      0,          5,          1,          1,          'Nemesis Skullcap'),
(@Entry,   16808,      0,          5,          1,          1,          'Felheart Horns'),
-- Druid        
(@Entry,   51290,      0,          5,          1,          1,          'Sanctified Lasherweave Cover'),
(@Entry,   51137,      0,          5,          1,          1,          'Sanctified Lasherweave Cover'),
(@Entry,   50108,      0,          5,          1,          1,          'Lasherweave Cover'),
(@Entry,   48188,      0,          5,          1,          1,          'Runetotems Headguard'),
(@Entry,   48800,      0,          5,          1,          1,          'Malfurions Headguard'),
(@Entry,   48144,      0,          5,          1,          1,          'Runetotems Cover'),
(@Entry,   48102,      0,          5,          1,          1,          'Malfurions Cover of Conquest'),
(@Entry,   48775,      0,          5,          1,          1,          'Malfurions Cover'),
(@Entry,   46184,      0,          5,          1,          1,          'Conquerors Nightsong Cover'),
(@Entry,   46161,      0,          5,          1,          1,          'Conquerors Nightsong Headguard'),
(@Entry,   45346,      0,          5,          1,          1,          'Valorous Nightsong Cover'),
(@Entry,   45356,      0,          5,          1,          1,          'Valorous Nightsong Headguard'),
(@Entry,   40461,      0,          5,          1,          1,          'Valorous Dreamwalker Cover'),
(@Entry,   40473,      0,          5,          1,          1,          'Valorous Dreamwalker Headguard'),
(@Entry,   39531,      0,          5,          1,          1,          'Heroes Dreamwalker Cover'),
(@Entry,   39553,      0,          5,          1,          1,          'Heroes Dreamwalker Headguard'),
(@Entry,   31037,      0,          5,          1,          1,          'Thunderheart Cover'),
(@Entry,   30219,      0,          5,          1,          1,          'Nordrassil Headdress'),
(@Entry,   29086,      0,          5,          1,          1,          'Antlers of Malorne'),
(@Entry,   21353,      0,          5,          1,          1,          'Genesis Helm'),
(@Entry,   16900,      0,          5,          1,          1,          'Stormrage Cover'),
(@Entry,   16834,      0,          5,          1,          1,          'Cenarion Helm');
-- ----------------------------------------------------------------------------------------------------------------------

-- Hat Box PvP
SET
@Entry          = 21512,
@Quality        = 3,
@Money          = 0,
@Name           = 'Hat Box',
@Description    = 'Contains a special hat!';
UPDATE `item_template` SET `name`=@Name,`description`=@Description, `quality`=@Quality, `minmoneyloot`=@Money, `maxmoneyloot`=@Money, `maxcount`=0 where `entry`=@Entry;

-- Loot template - Hat Box PvP
DELETE FROM `item_loot_template` WHERE `entry` = @Entry;
INSERT INTO `item_loot_template` 
-- ----------------------------------------------------------------------------------------------------------------------
(`Entry`,   `Item`,        `Chance`,   `groupid`,  `mincount`, `maxcount`, `comment`) VALUES
-- ----------------------------------------------------------------------------------------------------------------------
-- Warrior
(@Entry,    51543,      0,          5,          1,           1,          'Wrathful Gladiators Plate Helm'),
(@Entry,    40829,      0,          5,          1,           1,          'Relentless Gladiators Plate Helm'),
(@Entry,    40826,      0,          5,          1,           1,          'Furious Gladiators Plate Helm'),
(@Entry,    40823,      0,          5,          1,           1,          'Deadly Gladiators Plate Helm'),
(@Entry,    40816,      0,          5,          1,           1,          'Savage Gladiators Plate Helm'),
(@Entry,    40819,      0,          5,          1,           1,          'Hateful Gladiators Plate Helm'),
(@Entry,    35068,      0,          5,          1,           1,          'Brutal Gladiators Dreadplate Helm'),
(@Entry,    33730,      0,          5,          1,           1,          'Vengeful Gladiators Plate Helm'),
(@Entry,    30488,      0,          5,          1,           1,          'Merciless Gladiators Plate Helm'),
(@Entry,    35409,      0,          5,          1,           1,          'Savage Plate Helm'),
(@Entry,    28701,      0,          5,          1,           1,          'Grand Marshals Plate Helm'),
(@Entry,    28853,      0,          5,          1,           1,          'High Warlords Plate Helm'),
(@Entry,    16478,      0,          5,          1,           1,          'Field Marshals Plate Helm'),
(@Entry,    16542,      0,          5,          1,           1,          'Warlords Plate Headpiece'),
(@Entry,    23314,      0,          5,          1,           1,          'Lieutenant Commanders Plate Helmet'),
(@Entry,    23244,      0,          5,          1,           1,          'Champions Plate Helm'),
-- Paladin       
(@Entry,    51470,      0,          5,          1,           1,          'Wrathful Gladiators Ornamented Headcover'),
(@Entry,    40831,      0,          5,          1,           1,          'Relentless Gladiators Ornamented Headcover'),
(@Entry,    40933,      0,          5,          1,           1,          'Furious Gladiators Ornamented Headcover'),
(@Entry,    40828,      0,          5,          1,           1,          'Furious Gladiators Scaled Helm'),
(@Entry,    40825,      0,          5,          1,           1,          'Deadly Gladiators Ornamented Headcover'),
(@Entry,    40818,      0,          5,          1,           1,          'Savage Gladiators Ornamented Headcover'),
(@Entry,    40821,      0,          5,          1,           1,          'Hateful Gladiators Ornamented Headcover'),
(@Entry,    35029,      0,          5,          1,           1,          'Brutal Gladiators Lamellar Helm'),
(@Entry,    33697,      0,          5,          1,           1,          'Vengeful Gladiators Lamellar Helm'),
(@Entry,    31997,      0,          5,          1,           1,          'Merciless Gladiators Lamellar Helm'),
(@Entry,    27704,      0,          5,          1,           1,          'Gladiators Lamellar Helm'),
(@Entry,    35404,      0,          5,          1,           1,          'Crusaders Ornamented Headguard'),
(@Entry,    28863,      0,          5,          1,           1,          'High Warlords Scaled Helm'),
(@Entry,    28681,      0,          5,          1,           1,          'Grand Marshals Lamellar Helm'),
(@Entry,    28833,      0,          5,          1,           1,          'High Warlords Lamellar Helm'),
(@Entry,    29604,      0,          5,          1,           1,          'Champions Lamellar Headguard'),
(@Entry,    16474,      0,          5,          1,           1,          'Field Marshals Lamellar Faceguard'),
-- Hunter        
(@Entry,    51460,      0,          5,          1,           1,          'Wrathful Gladiators Chain Helm'),
(@Entry,    41158,      0,          5,          1,           1,          'Relentless Gladiators Chain Helm'),
(@Entry,    41157,      0,          5,          1,           1,          'Furious Gladiators Chain Helm'),
(@Entry,    41156,      0,          5,          1,           1,          'Deadly Gladiators Chain Helm'),
(@Entry,    41154,      0,          5,          1,           1,          'Savage Gladiators Chain Helm'),
(@Entry,    41155,      0,          5,          1,           1,          'Hateful Gladiators Chain Helm'),
(@Entry,    34992,      0,          5,          1,           1,          'Brutal Gladiators Chain Helm'),
(@Entry,    33666,      0,          5,          1,           1,          'Vengeful Gladiators Chain Helm'),
(@Entry,    31962,      0,          5,          1,           1,          'Merciless Gladiators Chain Helm'),
(@Entry,    28331,      0,          5,          1,           1,          'Gladiators Chain Helm'),
(@Entry,    35378,      0,          5,          1,           1,          'Stalkers Chain Helm'),
(@Entry,    28615,      0,          5,          1,           1,          'Grand Marshals Chain Helm'),
(@Entry,    16566,      0,          5,          1,           1,          'Warlords Chain Helmet'),
(@Entry,    16465,      0,          5,          1,           1,          'Field Marshals Chain Helm'),
(@Entry,    16578,      0,          5,          1,           1,          'Field Marshals Mail Helm'),
(@Entry,    23306,      0,          5,          1,           1,          'Lieutenant Commanders Chain Helm'),
(@Entry,    23251,      0,          5,          1,           1,          'Champions Chain Helm'),
-- Rogue         
(@Entry,    51494,      0,          5,          1,           1,          'Wrathful Gladiators Leather Helm'),
(@Entry,    41673,      0,          5,          1,           1,          'Relentless Gladiators Leather Helm'),
(@Entry,    41672,      0,          5,          1,           1,          'Furious Gladiators Leather Helm'),
(@Entry,    41671,      0,          5,          1,           1,          'Deadly Gladiators Leather Helm'),
(@Entry,    41644,      0,          5,          1,           1,          'Savage Gladiators Leather Helm'),
(@Entry,    41670,      0,          5,          1,           1,          'Hateful Gladiators Leather Helm'),
(@Entry,    35033,      0,          5,          1,           1,          'Brutal Gladiators Leather Helm'),
(@Entry,    33701,      0,          5,          1,           1,          'Vengeful Gladiators Leather Helm'),
(@Entry,    31999,      0,          5,          1,           1,          'Merciless Gladiators Leather Helm'),
(@Entry,    25830,      0,          5,          1,           1,          'Gladiators Leather Helm'),
(@Entry,    28127,      0,          5,          1,           1,          'Gladiators Dragonhide Helm'),
(@Entry,    35367,      0,          5,          1,           1,          'Opportunists Leather Helm'),
(@Entry,    28837,      0,          5,          1,           1,          'High Warlords Leather Helm'),
(@Entry,    28685,      0,          5,          1,           1,          'Grand Marshals Leather Helm'),
(@Entry,    16451,      0,          5,          1,           1,          'Field Marshals Dragonhide Helmet'),
(@Entry,    16561,      0,          5,          1,           1,          'Warlords Leather Helm'),
(@Entry,    23312,      0,          5,          1,           1,          'Lieutenant Commanders Leather Helm'),
(@Entry,    23257,      0,          5,          1,           1,          'Champions Leather Helm'),
-- Priest        
(@Entry,    51484,      0,          5,          1,           1,          'Wrathful Gladiators Mooncloth Hood'),
(@Entry,    41855,      0,          5,          1,           1,          'Relentless Gladiators Mooncloth Hood'),
(@Entry,    41854,      0,          5,          1,           1,          'Furious Gladiators Mooncloth Hood'),
(@Entry,    41853,      0,          5,          1,           1,          'Deadly Gladiators Mooncloth Hood'),
(@Entry,    41848,      0,          5,          1,           1,          'Savage Gladiators Mooncloth Hood'),
(@Entry,    41852,      0,          5,          1,           1,          'Hateful Gladiators Mooncloth Hood'),
(@Entry,    35054,      0,          5,          1,           1,          'Brutal Gladiators Mooncloth Hood'),
(@Entry,    33718,      0,          5,          1,           1,          'Vengeful Gladiators Mooncloth Hood'),
(@Entry,    32016,      0,          5,          1,           1,          'Merciless Gladiators Mooncloth Hood'),
(@Entry,    27708,      0,          5,          1,           1,          'Gladiators Mooncloth Hood'),
(@Entry,    35333,      0,          5,          1,           1,          'Mooncloth Cowl'),
(@Entry,    28705,      0,          5,          1,           1,          'Grand Marshals Mooncloth Cowl'),
(@Entry,    28818,      0,          5,          1,           1,          'High Warlords Dreadweave Hood'),
(@Entry,    17623,      0,          5,          1,           1,          'Warlords Satin Cowl'),
(@Entry,    17602,      0,          5,          1,           1,          'Field Marshals Headdress'),
(@Entry,    23316,      0,          5,          1,           1,          'Lieutenant Commanders Satin Hood'),
(@Entry,    23261,      0,          5,          1,           1,          'Champions Satin Hood'),
-- Shaman        
(@Entry,    51499,      0,          5,          1,           1,          'Wrathful Gladiators Linked Helm'),
(@Entry,    41014,      0,          5,          1,           1,          'Relentless Gladiators Linked Helm'),
(@Entry,    41013,      0,          5,          1,           1,          'Furious Gladiators Linked Helm'),
(@Entry,    41012,      0,          5,          1,           1,          'Deadly Gladiators Linked Helm'),
(@Entry,    41010,      0,          5,          1,           1,          'Savage Gladiators Linked Helm'),
(@Entry,    41011,      0,          5,          1,           1,          'Hateful Gladiators Linked Helm'),
(@Entry,    35079,      0,          5,          1,           1,          'Brutal Gladiators Ringmail Helm'),
(@Entry,    35044,      0,          5,          1,           1,          'Brutal Gladiators Linked Helm'),
(@Entry,    33708,      0,          5,          1,           1,          'Vengeful Gladiators Linked Helm'),
(@Entry,    32006,      0,          5,          1,           1,          'Merciless Gladiators Linked Helm'),
(@Entry,    31400,      0,          5,          1,           1,          'Gladiators Ringmail Helm'),
(@Entry,    25998,      0,          5,          1,           1,          'Gladiators Linked Helm'),
(@Entry,    35383,      0,          5,          1,           1,          'Seers Linked Helm'),
(@Entry,    23259,      0,          5,          1,           1,          'Champions Mail Headguard'),
-- Mage      
(@Entry,    51465,      0,          5,          1,           1,          'Wrathful Gladiators Silk Cowl'),
(@Entry,    41947,      0,          5,          1,           1,          'Relentless Gladiators Silk Cowl'),
(@Entry,    41946,      0,          5,          1,           1,          'Furious Gladiators Silk Cowl'),
(@Entry,    41945,      0,          5,          1,           1,          'Deadly Gladiators Silk Cowl'),
(@Entry,    41943,      0,          5,          1,           1,          'Savage Gladiators Silk Cowl'),
(@Entry,    41944,      0,          5,          1,           1,          'Hateful Gladiators Silk Cowl'),
(@Entry,    35097,      0,          5,          1,           1,          'Brutal Gladiators Silk Cowl'),
(@Entry,    33758,      0,          5,          1,           1,          'Vengeful Gladiators Silk Cowl'),
(@Entry,    32048,      0,          5,          1,           1,          'Merciless Gladiators Silk Cowl'),
(@Entry,    25855,      0,          5,          1,           1,          'Gladiators Silk Cowl'),
(@Entry,    35344,      0,          5,          1,           1,          'Evokers Silk Cowl'),
(@Entry,    28715,      0,          5,          1,           1,          'Grand Marshals Silk Cowl'),
(@Entry,    16441,      0,          5,          1,           1,          'Field Marshals Coronet'),
(@Entry,    16533,      0,          5,          1,           1,          'High Warlords Silk Cowl'),
(@Entry,    23318,      0,          5,          1,           1,          'Lieutenant Commanders Silk Cowl'),
(@Entry,    23263,      0,          5,          1,           1,          'Champions Silk Cowl'),
-- Warlock       
(@Entry,    51538,      0,          5,          1,           1,          'Wrathful Gladiators Felweave Cowl'),
(@Entry,    41994,      0,          5,          1,           1,          'Relentless Gladiators Felweave Cowl'),
(@Entry,    41993,      0,          5,          1,           1,          'Furious Gladiators Felweave Cowl'),
(@Entry,    41992,      0,          5,          1,           1,          'Deadly Gladiators Felweave Cowl'),
(@Entry,    41990,      0,          5,          1,           1,          'Savage Gladiators Felweave Cowl'),
(@Entry,    41991,      0,          5,          1,           1,          'Hateful Gladiators Felweave Cowl'),
(@Entry,    35004,      0,          5,          1,           1,          'Brutal Gladiators Dreadweave Hood'),
(@Entry,    33677,      0,          5,          1,           1,          'Vengeful Gladiators Dreadweave Hood'),
(@Entry,    31980,      0,          5,          1,           1,          'Merciless Gladiators Felweave Cowl'),
(@Entry,    31974,      0,          5,          1,           1,          'Merciless Gladiators Dreadweave Hood'),
(@Entry,    30187,      0,          5,          1,           1,          'Gladiators Felweave Cowl'),
(@Entry,    24553,      0,          5,          1,           1,          'Gladiators Dreadweave Hood'),
(@Entry,    35329,      0,          5,          1,           1,          'Dreadweave Hood'),
(@Entry,    28625,      0,          5,          1,           1,          'Grand Marshals Dreadweave Hood'),
(@Entry,    17578,      0,          5,          1,           1,          'Field Marshals Coronal'),
(@Entry,    17591,      0,          5,          1,           1,          'Warlords Dreadweave Hood'),
(@Entry,    23310,      0,          5,          1,           1,          'Lieutenant Commanders Dreadweave Cowl'),
(@Entry,    23255,      0,          5,          1,           1,          'Champions Dreadweave Cowl'),
-- Druid         
(@Entry,    51421,      0,          5,          1,           1,          'Wrathful Gladiators Dragonhide Helm'),
(@Entry,    41322,      0,          5,          1,           1,          'Relentless Gladiators Dragonhide Helm'),
(@Entry,    41327,      0,          5,          1,           1,          'Furious Gladiators Wyrmhide Helm'),
(@Entry,    41321,      0,          5,          1,           1,          'Furious Gladiators Dragonhide Helm'),
(@Entry,    41320,      0,          5,          1,           1,          'Deadly Gladiators Dragonhide Helm'),
(@Entry,    41269,      0,          5,          1,           1,          'Savage Gladiators Dragonhide Helm'),
(@Entry,    41319,      0,          5,          1,           1,          'Hateful Gladiators Dragonhide Helm'),
(@Entry,    35023,      0,          5,          1,           1,          'Brutal Gladiators Kodohide Helm'),
(@Entry,    34999,      0,          5,          1,           1,          'Brutal Gladiators Dragonhide Helm'),
(@Entry,    33691,      0,          5,          1,           1,          'Vengeful Gladiators Kodohide Helm'),
(@Entry,    33672,      0,          5,          1,           1,          'Vengeful Gladiators Dragonhide Helm'),
(@Entry,    31968,      0,          5,          1,           1,          'Merciless Gladiators Dragonhide Helm'),
(@Entry,    35357,      0,          5,          1,           1,          'Dragonhide Helm'),
(@Entry,    28812,      0,          5,          1,           1,          'High Warlords Dragonhide Helm'),
(@Entry,    28619,      0,          5,          1,           1,          'Grand Marshals Dragonhide Helm'),
(@Entry,    16550,      0,          5,          1,           1,          'Warlords Dragonhide Helmet'),
(@Entry,    23308,      0,          5,          1,           1,          'Lieutenant Commanders Dragonhide Headguard'),
(@Entry,    23253,      0,          5,          1,           1,          'Champions Dragonhide Headguard');
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
(@Ref_Rings,    28793,      0,          10,         1,            1,          'Gathering Storm'),
(@Ref_Rings,    45297,      0,          10,         1,            1,          'Lifewarden'),
(@Ref_Rings,    51001,      0,          10,         1,            1,          'Pins and Needles'),
(@Ref_Rings,    45471,      0,          10,         1,            1,          'Safe Haven'),
(@Ref_Rings,    34837,      0,          10,         1,            1,          'Lifestream Band'),
(@Ref_Rings,    33498,      0,          10,         1,            1,          'Emerald Dreamcatcher'),
(@Ref_Rings,    45326,      0,          10,         1,            1,          'Ring of the Aesir'),
(@Ref_Rings,    31326,      0,          10,         1,            1,          'Saving Grace'),
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
(@Ref_Darkmoon, 19276,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19278,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19279,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19280,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19281,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19282,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19283,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19284,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31882,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31883,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31884,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31885,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31886,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31887,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31888,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31889,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31910,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31911,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31912,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31913,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31915,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31916,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31917,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31918,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44260,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44261,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44262,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44263,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44264,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44265,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44266,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44267,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19268,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19269,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19270,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19271,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19272,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19273,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19274,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19275,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44286,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44287,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44288,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44289,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44290,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44291,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44292,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 44293,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31892,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31893,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31894,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31895,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31896,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31898,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31899,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31900,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19227,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19230,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19231,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19232,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19233,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19234,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19235,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19236,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31901,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31902,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31903,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31904,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31905,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31906,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31908,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 31909,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19258,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19259,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19260,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19261,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19262,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19263,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19264,      0,          9,          1,          1,          'Darkmoon Card'),
(@Ref_Darkmoon, 19265,      0,          9,          1,          1,          'Darkmoon Card');
-- ----------------------------------------------------------------------------------------------------------