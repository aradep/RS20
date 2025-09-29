-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater creature_template changes
-- -----------------------------------

-- Creature IDs

-- Naga
SET @Naga_Engineer = 17721;
SET @Naga_Sorceress = 17722;
SET @Naga_Myrmidon = 17800;
SET @Naga_Siren = 17801;
SET @Naga_Warrior = 17802;
SET @Naga_Oracle = 17803;
SET @Naga_Slavemaster = 17805;
SET @Naga_Water_Elemental = 17917;
SET @Naga_Ambusher = 21865;
SET @Naga_Guardian = 21873;
SET @Naga_Defender = 17958;
SET @Naga_Soothsayer = 17960;
SET @Naga_Enchantress = 17961;
SET @Naga_Champion = 17957;
SET @Naga_Emissary = 18681;
-- Murlocs
SET @Murloc_Coastrunner = 126;
SET @Murloc_Tidehunter = 127;
SET @Murloc_Flesheater = 422;
SET @Murloc_Hunter = 458;
SET @Murloc_Netter = 513;
SET @Murloc_Oracle = 517;
SET @Murloc_Nightcrawler = 544;
SET @Murloc_Tidecaller = 545;
SET @Murloc_Scout = 578;
SET @Crawler = 6250;
-- Fields
SET @Grovestalker_Lynx = 21022;
SET @Wandering_Ancient = 12836;
-- Wreckage
SET @Buzzard = 2830;
SET @Giant_Buzzard = 2831;
SET @Wandering_Skeleton = 10816;
-- Furbolg Hold
SET @Furbolg_Hunter = 26356;
SET @Furbolg_Warrior = 26357;
SET @Furbolg_Shaman = 26428;
SET @Furbolg_Trapper = 26434;
SET @Furbolg_Elder = 26436;
SET @Furbolg_Ursa = 2170;
SET @Furbolg_Pathfinder = 2167;
SET @Lupine_Delusion = 5097;
SET @Water_Terror = 30633;
SET @Tamed_Bear = 5433;
-- Satyr camp
SET @FelSatyr_Satyr = 7105;
SET @FelSatyr_Rogue = 7106;
SET @FelSatyr_Trickster = 7107;
SET @FelSatyr_Betrayer = 7108;
SET @FelSatyr_Felsworn = 7109;
SET @FelSatyr_Shadowstalker = 7110;
SET @FelSatyr_Hellcaller = 7111;
SET @Felhound = 6010;

-- Horde side

-- Giants
SET @Rock_Giant = 7765;
SET @Stone_Giant = 23725;
-- Raptors
SET @Raptor_Raptor = 20734;
SET @Raptor_Lashtail = 20751;
SET @Raptor_Devourer = 20754;
-- Serpent
SET @Serpent_Serpent = 20749;
-- Croc
SET @Mangal_Crocolisk = 28002;
-- Tiki warrior
SET @Enchanted_Tiki_Warrior = 28927;
-- Dragonspawn
SET @Dragonspawn_Dragonspawn = 7042;
SET @Dragonspawn_Wyrmkin = 7043;
SET @Dragonspawn_Broodling = 7049;
-- Gnolls
SET @Gnoll_Alpha = 11840;
SET @Gnoll_Mystic = 11838;
SET @Gnoll_Brute = 11839;
SET @Gnoll_Shaman = 11837;
SET @Gnoll_Gnoll = 10991;

-- Alliance side

-- Goblin mine
SET @Goblin_Worker = 674;
SET @Goblin_Miner = 1094;
SET @Goblin_Foreman = 1095;
SET @Goblin_Geologist = 1096;
SET @Crystal_Spider = 5856;
-- Ancients
SET @Wandering_Protector = 12836;
SET @Withered_Protector = 7149;
-- Ogres
SET @Ogre_Enforcer = 11440;
SET @Ogre_Mauler = 11442;
SET @Ogre_Mage = 11443;
SET @Ogre_Hyena = 12418;
SET @Ogre_Brute = 11441;
SET @Ogre_Reaver = 11450;
SET @Ogre_Mage_Lord = 11444;
SET @Ogre_Captain = 11445;
SET @Ogre_Warlock = 11448;
SET @Doomguard = 11859;
SET @Hyena_alpha = 13036;
-- Moonwell 
SET @Gorloc_Waddler = 25685;
SET @Gorloc_Gibberer = 25686;
SET @Gorloc_Steam_Belcher = 25687;
SET @Gorloc_Mud_Splasher = 25699;
SET @Gorloc_Hunter = 25700;
SET @Gorloc_Dredger = 25701;
SET @Gorloc_Hatchling = 28140;
SET @Gorloc_Oracle = 25688;
SET @Water_Elemental = 17917;
-- Outside wolvar hold
SET @Wolvar_Tracker = 28077;
SET @Wolvar_Hunter = 28079;
SET @Wolvar_Scavenger = 28081;
SET @Wolvar_Pup = 28139;
-- Inside wolvar hold
SET @Wolvar_Spearbearer = 28080;
SET @Wolvar_Ravager = 28078;
SET @Wolvar_Berserker = 28076;
SET @Rotting_Highborne = 11477;
SET @Skeletal_Highborne = 11476;
SET @Anguished_Highborne = 7524;
SET @Suffering_Highborne = 7523;
SET @Highborne_Lichling = 6117;
SET @Highborne_Apparition = 6116;
SET @Cave_Beast = 4387;
SET @Cave_Creeper = 4382;
SET @Cave_Rager = 4385;
SET @Sap_Beast = 4020;

-- Temple side

-- Burning trees
SET @WitheredAncient_Treant = 7144;
SET @WitheredAncient_Protector = 7149;
SET @Harpy_Ripper = 12579;
SET @Harpy_Harpy = 4022;
SET @Harpy_Roguefeather = 4023;
SET @Harpy_Slayer = 4024;
SET @Harpy_Ambusher = 4025;
SET @Harpy_Windcaller = 4026;
SET @Harpy_Storm_Witch = 4027;
SET @Turtle_Tortoise = 4142;
SET @Turtle_Snapper = 4143;
SET @Turtle_Borer = 4144;
SET @Fire_Elemental = 575;
SET @Air_Elemental = 28384;
-- Temple ruins
SET @Wildsatyr_Satyr = 11451;
SET @Wildsatyr_Rogue = 11452;
SET @Wildsatyr_Trickster = 11453;
SET @Wildsatyr_Felsworn = 11455;
SET @Wildsatyr_Shadowstalker = 11456;
SET @Wildsatyr_Hellcaller = 11457;
SET @Wildsatyr_Imp = 13276;
-- Temple interior
SET @Rogue_Voidwalker = 16974;
SET @Collapsing_Voidwalker = 17014;
SET @Voidspawn = 17981;
SET @Unstable_Voidwraith = 18869;
SET @Voidshrieker = 18870;
SET @Shadowfiend = 27834;
SET @Void_Lord = 32230;
SET @Void_Beast = 33806;

-- Elites
SET @Tanak_Ragepaw = 31911;
SET @Xavaric = 10648;
SET @King_Gorloc = 25693;
SET @Phytos = 50329;
SET @Earthshaker = 12203;
SET @Guard_Fengus = 14321;
SET @Guard_Slipkik = 14323;
SET @Guard_Moldar = 14326;
SET @Chorush_the_Observer = 14324;
SET @Chimaeeon = 12800;
SET @Hexxer = 7995;
SET @Snarlax_Snowpelt = 46439;
SET @Shirek = 32485;
SET @King_Gordok = 11501;
SET @Dark_Illidan = 71000;

-- Creature template changes

-- Naga
UPDATE `creature_template` SET `name`='Naga Ambusher' WHERE `entry`=@Naga_Ambusher;
UPDATE `creature_template` SET `name`='Naga Defender' WHERE `entry`=@Naga_Defender;
UPDATE `creature_template` SET `name`='Naga Soothsayer' WHERE `entry`=@Naga_Soothsayer;
UPDATE `creature_template` SET `name`='Naga Enchantress' WHERE `entry`=@Naga_Enchantress;
UPDATE `creature_template` SET `name`='Naga Champion' WHERE `entry`=@Naga_Champion;
-- Murlocs
UPDATE `creature_template` SET `name`='Murloc Coastrunner' WHERE `entry`=@Murloc_Coastrunner;
UPDATE `creature_template` SET `name`='Murloc Tidehunter' WHERE `entry`=@Murloc_Tidehunter;
UPDATE `creature_template` SET `name`='Murloc Flesheater' WHERE `entry`=@Murloc_Flesheater;
UPDATE `creature_template` SET `name`='Murloc Hunter' WHERE `entry`=@Murloc_Hunter;
UPDATE `creature_template` SET `name`='Murloc Netter' WHERE `entry`=@Murloc_Netter;
UPDATE `creature_template` SET `name`='Murloc Oracle' WHERE `entry`=@Murloc_Oracle;
UPDATE `creature_template` SET `name`='Murloc Nightcrawler' WHERE `entry`=@Murloc_Nightcrawler;
UPDATE `creature_template` SET `name`='Murloc Scout' WHERE `entry`=@Murloc_Scout;
-- Fields
UPDATE `creature_template` SET `name`='Grovestalker Lynx' WHERE `entry`=@Grovestalker_Lynx;
UPDATE `creature_template` SET `name`='Wandering Ancient' WHERE `entry`=@Wandering_Ancient;
-- Wreckage
UPDATE `creature_template` SET `name`='Buzzard' WHERE `entry`=@Buzzard;
UPDATE `creature_template` SET `name`='Giant Buzzard' WHERE `entry`=@Giant_Buzzard;
UPDATE `creature_template` SET `name`='Skeleton' WHERE `entry`=@Wandering_Skeleton;
-- Furbolg Hold
UPDATE `creature_template` SET `name`='Redfang Hunter' WHERE `entry`=@Furbolg_Hunter;
UPDATE `creature_template` SET `name`='Redfang Warrior' WHERE `entry`=@Furbolg_Warrior;
UPDATE `creature_template` SET `name`='Redfang Shaman' WHERE `entry`=@Furbolg_Shaman;
UPDATE `creature_template` SET `name`='Redfang Trapper' WHERE `entry`=@Furbolg_Trapper;
UPDATE `creature_template` SET `name`='Redfang Elder' WHERE `entry`=@Furbolg_Elder;
UPDATE `creature_template` SET `name`='Redfang Ursa' WHERE `entry`=@Furbolg_Ursa;
UPDATE `creature_template` SET `name`='Redfang Den Watcher' WHERE `entry`=@Furbolg_Pathfinder;
-- Satyr camp
UPDATE `creature_template` SET `name`='Darkfire Satyr' WHERE `entry`=@FelSatyr_Satyr;
UPDATE `creature_template` SET `name`='Darkfire Rogue' WHERE `entry`=@FelSatyr_Rogue;
UPDATE `creature_template` SET `name`='Darkfire Trickster' WHERE `entry`=@FelSatyr_Trickster;
UPDATE `creature_template` SET `name`='Darkfire Betrayer' WHERE `entry`=@FelSatyr_Betrayer;
UPDATE `creature_template` SET `name`='Darkfire Felsworn' WHERE `entry`=@FelSatyr_Felsworn;
UPDATE `creature_template` SET `name`='Darkfire Shadowstalker' WHERE `entry`=@FelSatyr_Shadowstalker;
UPDATE `creature_template` SET `name`='Darkfire Hellcaller' WHERE `entry`=@FelSatyr_Hellcaller;
UPDATE `creature_template` SET `name`='Felhound' WHERE `entry`=@Felhound;
-- Horde Giants
UPDATE `creature_template` SET `name`='Rock Giant' WHERE `entry`=@Rock_Giant;
-- Horde Raptors
UPDATE `creature_template` SET `name`='Daggermaw Raptor' WHERE `entry`=@Raptor_Raptor;
UPDATE `creature_template` SET `name`='Daggermaw Lashtail' WHERE `entry`=@Raptor_Lashtail;
UPDATE `creature_template` SET `name`='Daggermaw Devourer' WHERE `entry`=@Raptor_Devourer;
-- Horde Serpent
UPDATE `creature_template` SET `name`='Scalewing Serpent' WHERE `entry`=@Serpent_Serpent;
-- Horde Croc
UPDATE `creature_template` SET `name`='Mangal Crocolisk' WHERE `entry`=@Mangal_Crocolisk;
-- Horde Tiki warrior
UPDATE `creature_template` SET `name`='Enchanted Tiki Warrior' WHERE `entry`=@Enchanted_Tiki_Warrior;
-- Horde Dragonspawn
UPDATE `creature_template` SET `name`='Flamescale Dragonspawn' WHERE `entry`=@Dragonspawn_Dragonspawn;
UPDATE `creature_template` SET `name`='Flamescale Wyrmkin' WHERE `entry`=@Dragonspawn_Wyrmkin;
UPDATE `creature_template` SET `name`='Flamescale Broodling' WHERE `entry`=@Dragonspawn_Broodling;
-- Horde Gnolls
UPDATE `creature_template` SET `name`='Ashmane Alpha' WHERE `entry`=@Gnoll_Alpha;
UPDATE `creature_template` SET `name`='Ashmane Mystic' WHERE `entry`=@Gnoll_Mystic;
UPDATE `creature_template` SET `name`='Ashmane Brute' WHERE `entry`=@Gnoll_Brute;
UPDATE `creature_template` SET `name`='Ashmane Shaman' WHERE `entry`=@Gnoll_Shaman;
UPDATE `creature_template` SET `name`='Ashmane Gnoll' WHERE `entry`=@Gnoll_Gnoll;
-- Goblin mine
UPDATE `creature_template` SET `name`='Goblin Worker' WHERE `entry`=@Goblin_Worker;
UPDATE `creature_template` SET `name`='Goblin Miner' WHERE `entry`=@Goblin_Miner;
UPDATE `creature_template` SET `name`='Goblin Foreman' WHERE `entry`=@Goblin_Foreman;
UPDATE `creature_template` SET `name`='Goblin Geologist' WHERE `entry`=@Goblin_Geologist;
UPDATE `creature_template` SET `name`='Crystal Spider' WHERE `entry`=@Crystal_Spider;
-- Ogres
UPDATE `creature_template` SET `name`='Highland Ogre' WHERE `entry`=@Ogre_Enforcer;
UPDATE `creature_template` SET `name`='Highland Mauler' WHERE `entry`=@Ogre_Mauler;
UPDATE `creature_template` SET `name`='Highland Ogre Mage' WHERE `entry`=@Ogre_Mage;
UPDATE `creature_template` SET `name`='Hyena' WHERE `entry`=@Ogre_Hyena;
UPDATE `creature_template` SET `name`='Highland Brute' WHERE `entry`=@Ogre_Brute;
UPDATE `creature_template` SET `name`='Highland Reaver' WHERE `entry`=@Ogre_Reaver;
UPDATE `creature_template` SET `name`='Highland Mage-Lord' WHERE `entry`=@Ogre_Mage_Lord;
UPDATE `creature_template` SET `name`='Highland Ogre Captain' WHERE `entry`=@Ogre_Captain;
UPDATE `creature_template` SET `name`='Highland Ogre Warlock' WHERE `entry`=@Ogre_Warlock;
UPDATE `creature_template` SET `name`='Hyena Alpha' WHERE `entry`=@Hyena_alpha;
-- Gorlocs
UPDATE `creature_template` SET `name`='Gorloc Waddler' WHERE `entry`=@Gorloc_Waddler;
UPDATE `creature_template` SET `name`='Gorloc Gibberer' WHERE `entry`=@Gorloc_Gibberer;
UPDATE `creature_template` SET `name`='Gorloc Streamrunner' WHERE `entry`=@Gorloc_Steam_Belcher;
UPDATE `creature_template` SET `name`='Gorloc Mud Splasher' WHERE `entry`=@Gorloc_Mud_Splasher;
UPDATE `creature_template` SET `name`='Gorloc Hunter' WHERE `entry`=@Gorloc_Hunter;
UPDATE `creature_template` SET `name`='Gorloc Dredger' WHERE `entry`=@Gorloc_Dredger;
UPDATE `creature_template` SET `name`='Gorloc Hatchling' WHERE `entry`=@Gorloc_Hatchling;
UPDATE `creature_template` SET `name`='Gorloc Oracle' WHERE `entry`=@Gorloc_Oracle;
-- Wolvar
UPDATE `creature_template` SET `name`='Ragepaw Tracker' WHERE `entry`=@Wolvar_Tracker;
UPDATE `creature_template` SET `name`='Ragepaw Hunter' WHERE `entry`=@Wolvar_Hunter;
UPDATE `creature_template` SET `name`='Ragepaw Scavenger' WHERE `entry`=@Wolvar_Scavenger;
UPDATE `creature_template` SET `name`='Wolvar Pup' WHERE `entry`=@Wolvar_Pup;
UPDATE `creature_template` SET `name`='Ragepaw Spearbearer' WHERE `entry`=@Wolvar_Spearbearer;
UPDATE `creature_template` SET `name`='Ragepaw Ravager' WHERE `entry`=@Wolvar_Ravager;
UPDATE `creature_template` SET `name`='Ragepaw Berserker' WHERE `entry`=@Wolvar_Berserker;
-- Undead
UPDATE `creature_template` SET `name`='Rotting Highborne' WHERE `entry`=@Rotting_Highborne;
UPDATE `creature_template` SET `name`='Skeletal Highborne' WHERE `entry`=@Skeletal_Highborne;
UPDATE `creature_template` SET `name`='Restless Highborne' WHERE `entry`=@Anguished_Highborne;
UPDATE `creature_template` SET `name`='Suffering Spectre' WHERE `entry`=@Suffering_Highborne;
UPDATE `creature_template` SET `name`='Lost Soul' WHERE `entry`=@Highborne_Lichling;
-- Moss Beasts
UPDATE `creature_template` SET `name`='Cave Beast' WHERE `entry`=@Cave_Beast;
UPDATE `creature_template` SET `name`='Cave Creeper' WHERE `entry`=@Cave_Creeper;
UPDATE `creature_template` SET `name`='Cave Rager' WHERE `entry`=@Cave_Rager;
UPDATE `creature_template` SET `name`='Animated Sap' WHERE `entry`=@Sap_Beast;
-- Ancients
UPDATE `creature_template` SET `name`='Withered Treant' WHERE `entry`=@WitheredAncient_Treant;
UPDATE `creature_template` SET `name`='Withered Ancient' WHERE `entry`=@WitheredAncient_Protector;
-- Harpies
UPDATE `creature_template` SET `name`='Harpy Matriarch' WHERE `entry`=@Harpy_Ripper;
UPDATE `creature_template` SET `name`='Harpy Scout' WHERE `entry`=@Harpy_Harpy;
UPDATE `creature_template` SET `name`='Harpy Rogue' WHERE `entry`=@Harpy_Roguefeather;
UPDATE `creature_template` SET `name`='Harpy Soldier' WHERE `entry`=@Harpy_Slayer;
UPDATE `creature_template` SET `name`='Harpy Ambusher' WHERE `entry`=@Harpy_Ambusher;
UPDATE `creature_template` SET `name`='Harpy Windcaller' WHERE `entry`=@Harpy_Windcaller;
UPDATE `creature_template` SET `name`='Harpy Storm Witch' WHERE `entry`=@Harpy_Storm_Witch;
-- Turtles
UPDATE `creature_template` SET `name`='Steelshell Tortoise' WHERE `entry`=@Turtle_Tortoise;
UPDATE `creature_template` SET `name`='Steelshell Snapper' WHERE `entry`=@Turtle_Snapper;
UPDATE `creature_template` SET `name`='Steelshell Borer' WHERE `entry`=@Turtle_Borer;
-- Elementals
UPDATE `creature_template` SET `name`='Fire Elemental' WHERE `entry`=@Fire_Elemental;
UPDATE `creature_template` SET `name`='Air Elemental' WHERE `entry`=@Air_Elemental;
-- Temple Ruins Satyr
UPDATE `creature_template` SET `name`='Felspawn Satyr' WHERE `entry`=@Wildsatyr_Satyr;
UPDATE `creature_template` SET `name`='Felspawn Rogue' WHERE `entry`=@Wildsatyr_Rogue;
UPDATE `creature_template` SET `name`='Felspawn Trickster' WHERE `entry`=@Wildsatyr_Trickster;
UPDATE `creature_template` SET `name`='Felspawn Assassin' WHERE `entry`=@Wildsatyr_Felsworn;
UPDATE `creature_template` SET `name`='Felspawn Shadowstalker' WHERE `entry`=@Wildsatyr_Shadowstalker;
UPDATE `creature_template` SET `name`='Felspawn Hellcaller' WHERE `entry`=@Wildsatyr_Hellcaller;
UPDATE `creature_template` SET `name`='Felspawn Imp' WHERE `entry`=@Wildsatyr_Imp;
-- Temple Interior Void
UPDATE `creature_template` SET `name`='Voidwalker' WHERE `entry`=@Rogue_Voidwalker;
UPDATE `creature_template` SET `name`='Collapsing Voidwalker' WHERE `entry`=@Collapsing_Voidwalker;
UPDATE `creature_template` SET `name`='Surging Voidwalker' WHERE `entry`=@Voidspawn;
UPDATE `creature_template` SET `name`='Voidwraith' WHERE `entry`=@Unstable_Voidwraith;
UPDATE `creature_template` SET `name`='Voidcaller' WHERE `entry`=@Voidshrieker;
UPDATE `creature_template` SET `name`='Shadowfiend' WHERE `entry`=@Shadowfiend;
UPDATE `creature_template` SET `name`='Void Lord' WHERE `entry`=@Void_Lord;
-- Elites
UPDATE `creature_template` SET `name`='Tanak Ragepaw' WHERE `entry`=@Tanak_Ragepaw;
UPDATE `creature_template` SET `name`='Xavaric' WHERE `entry`=@Xavaric;
UPDATE `creature_template` SET `name`='King Gorloc' WHERE `entry`=@King_Gorloc;
UPDATE `creature_template` SET `name`='Phytos' WHERE `entry`=@Phytos;
UPDATE `creature_template` SET `name`='Earthshaker' WHERE `entry`=@Earthshaker;
UPDATE `creature_template` SET `name`='Watcher One-Eye' WHERE `entry`=@Guard_Fengus;
UPDATE `creature_template` SET `name`='Grimgut' WHERE `entry`=@Guard_Slipkik;
UPDATE `creature_template` SET `name`='Guard-Captain Clogg' WHERE `entry`=@Guard_Moldar;
UPDATE `creature_template` SET `name`='Mokor the Tactician' WHERE `entry`=@Chorush_the_Observer;
UPDATE `creature_template` SET `name`='Chimaereon' WHERE `entry`=@Chimaeeon;
UPDATE `creature_template` SET `name`='Hexlord Rashiki' WHERE `entry`=@Hexxer;
UPDATE `creature_template` SET `name`='Snarlax Snowpelt' WHERE `entry`=@Snarlax_Snowpelt;
UPDATE `creature_template` SET `name`='Shi\'rek' WHERE `entry`=@Shirek;
UPDATE `creature_template` SET `name`='Warlord Skullcrush' WHERE `entry`=@King_Gordok;
UPDATE `creature_template` SET `name`='Shadow of the Betrayer' WHERE `entry`=@Dark_Illidan;

-- Custom creatures
REPLACE INTO `creature_template` 
(`entry`, `name`,                   `subname`,              `minlevel`, `maxlevel`, `faction`, `npcflag`,   `speed_walk`,   `speed_run`,    `scale`,    `rank`, `unit_class`,   `unit_flags`,   `unit_flags2`,  `type`, `type_flags`,   `flags_extra`,  `AiName`) VALUES 
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
(51502, 'Firelord',                 '',                     83,         83,         795,        131,        1,              1.14286,        2.1,        3,      1,              33587200,       2048,           7,      0,              2,              'SmartAI'),
(54435, 'Windseeker',               '',                     83,         83,         290,        0,          1,              1,              1.6,        3,      1,              33587200,       2048,           4,      4,              2,              'SmartAI'),
(32565, 'Commander Gara',           'Azsharan Expedition',  82,         82,         2007,       3,          1,              1,              1.2,        1,      1,              32768,          2048,           7,      4096,           1,              'SmartAI'),
(33642, 'Purveyor Delryn',          'Azsharan Expedition',  82,         82,         2007,       3,          1,              1,              1.1,        1,      8,              0,              2048,           7,      0,              1,              'SmartAI'),
(39283, 'Farseer Serena',           'Azsharan Expedition',  82,         82,         2007,       3,          1,              1,              1,          0,      1,              0,              2048,           7,      0,              1,              'SmartAI'),
(52291, 'Spymaster Jarre',          'Azsharan Expedition',  82,         82,         2007,       3,          1,              1,              0.9,        1,      4,              32768,          2048,           7,      0,              1,              'SmartAI'),
(30469, 'Forward Scout Razza',      'Azsharan Expedition',  82,         82,         2007,       3,          1,              1,              1.2,        1,      1,              0,              2048,           7,      0,              1,              'SmartAI'),
(30436, 'Trixy the Fixer',          'Supplies',             80,         80,         2007,       131,        1,              1.14286,        1.5,        0,      1,              32768,          2048,           7,      0,              1,              'SmartAI'),
(5153,  'Packmaster Stonebrow',     'Supplies',             80,         80,         2007,       131,        1,              1,              1.2,        1,      1,              32768,          2048,           7,      0,              1,              'SmartAI'),
(22442, 'Malik Stillblade',         'Supplies',             80,         80,         2007,       131,        1,              1.14286,        1,          0,      1,              0,              2048,           7,      0,              1,              'SmartAI'),
(4624,  'Tower Guardian',           '',                     23,         23,         2008,       0,          1,              1,              1.15,       1,      8,              32768,          2048,           7,      0,              0,              'SmartAI'),
(64624, 'Orc Bruiser',              '',                     23,         23,         2008,       0,          1,              1,              1.15,       1,      1,              32768,          2048,           7,      0,              0,              'SmartAI'),
(31911, 'Tanak Ragepaw',            '',                     23,         23,         16,         0,          0.8,            1.1,            2,          3,      1,              32768,          2048,           7,      4,              0,              'SmartAI'),
(7995,  'Hexlord Rashiki',          '',                     23,         23,         7,          0,          0.8,            1.1,            1,          3,      8,              32768,          2048,           7,      4,              0,              'SmartAI'),
(10648, 'Xavaric',                  '',                     23,         23,         90,         0,          0.9,            1.1,            1,          1,      2,              0,              2048,           3,      0,              0,              'SmartAI'),
(11501, 'Warlord Skullcrush',       '',                     23,         23,         45,         0,          0.8,            1.1,            1,          3,      1,              0,              2048,           7,      4,              1,              'SmartAI'),
(12203, 'Earthshaker',              'The Evergreen',        23,         23,         91,         0,          0.8,            1.1,            2,          3,      1,              64,             2048,           5,      12,             0,              'SmartAI'),
(12800, 'Chimaereon',               '',                     23,         23,         16,         0,          0.8,            1.1,            2,          3,      1,              64,             2048,           1,      65541,          0,              'SmartAI'),
(14321, 'Watcher One-Eye',          '',                     23,         23,         45,         1,          0.8,            1.1,            0.65,       3,      1,              0,              2048,           7,      4,              1,              'SmartAI'),
(14323, 'Grimgut',                  '',                     23,         23,         45,         1,          0.8,            1.1,            1,          3,      1,              0,              2048,           7,      4,              1,              'SmartAI'),
(14324, 'Mokor the Tactician',      '',                     23,         23,         45,         1,          0.8,            1.1,            0.8,        3,      2,              0,              2048,           7,      4,              1,              'SmartAI'),
(14326, 'Guard-Captain Clogg',      '',                     23,         23,         45,         1,          0.8,            1.1,            1,          3,      1,              0,              2048,           7,      4,              1,              'SmartAI'),
(25693, 'King Gorloc',              '',                     23,         23,         18,         0,          0.8,            1.1,            2.5,        3,      1,              0,              2048,           7,      4,              0,              'SmartAI'),
(46439, 'Snarlax Snowpelt',         '',                     23,         23,         2001,       0,          0.8,            1.1,            1,          3,      2,              32768,          2048,           7,      4,              0,              'SmartAI'),
(32485, 'Shirek',                   'The Devourer',         23,         23,         14,         0,          1,              1.1,            1,          3,      1,              0,              2048,           1,      4,              0,              'SmartAI'),
(50329, 'Phytos',                   'The Glowing One',      23,         23,         16,         0,          0.8,            1.1,            0.55,       3,      1,              32832,          2048,           4,      332,            0,              'SmartAI'),
(71000, 'Shadow of the Betrayer',   '',                     23,         23,         16,         0,          0.8,            1.1,            2,          3,      1,              514,            2048,           3,      76,             1,              'SmartAI');
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Models
REPLACE INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(51502, 11121, 1, 2, 1), -- Firelord
(54435, 14992, 1, 2, 1), -- Windseeker
(4624, 28780, 1, 2, 1), -- Kirin Tor Guardian
(64624, 4261, 1, 2, 1), -- Orc Bruiser
(31911, 25376, 1, 2, 1), -- Tanak Ragepaw
(7995, 7803, 1, 2, 1), -- Hexlord
(10648, 2879, 1, 2, 1), -- Xavaric
(11501, 11583, 1, 2, 1), -- Warlord Skullcrush
(12203, 23356, 1, 2, 1), -- Earthshaker
(12800, 4269, 1, 2, 1), -- Chimaereon
(14321, 11561, 1, 2, 1), -- Watcher One-Eye
(14323, 11561, 1, 2, 1), -- Grimgut
(14324, 11537, 1, 2, 1), -- Mokor the Tactician
(14326, 11561, 1, 2, 1), -- Guard-Captain Clogg
(25693, 22607, 1, 2, 1), -- King Gorloc
(46439, 23774, 1, 2, 1), -- Snarlax Snowpelt
(32485, 28052, 1, 2, 1), -- Shirek
(50329, 28133, 1, 2, 1), -- Phytos
(71000, 26348, 1, 2, 1), -- Shadow of the Betrayer
(32565, 28059, 1, 2, 1), -- Commander Gara
(33642, 28770, 1, 2, 1), -- Purveyor Delryn
(39283, 31391, 1, 2, 1), -- Farseer Serena
(52291, 30465, 1, 2, 1), -- Spymaster Jarre
(30469, 15577, 1, 2, 1), -- Forward Scout Razza
(30436, 23080, 1, 2, 1), -- Trixy the Fixer
(5153, 3072, 1, 2, 1),   -- Packmaster Stonebrow
(22442, 27888, 1, 2, 1); -- Malik Stillblade

-- Gossip

-- Purveyor Delryn
SET @entry = 33642;
SET @text = 'Welcome to the Crater, $N. I hope you brought some potions...';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu` WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text` WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text` WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Farseer Serena
SET @entry = 39283;
SET @text = 'Most children of Azeroth will never get to see this place.';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu` WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text` WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text` WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Forward Scout Razza
SET @entry = 30469;
SET @text = 'What can Razza do for ye, mon?';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu` WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text` WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text` WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Camp Commander Gara
SET @entry = 32565;
SET @text = 'Don\'t be startin\' any fights in my camp, got it?';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text`              WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Spymaster Jarre
SET @entry = 52291;
SET @text = 'Stay on yer toes, $R. It may be pretty \'round here but beauty attracts danger.';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text`              WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Packmaster Stonebrow
SET @entry = 5153;
SET @text = 'What kin I do for ye?';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text`              WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Emoting interact
REPLACE INTO `creature_template_addon` VALUES (@Entry, 0, 0, 0, 1, 69, 0, NULL);

-- Malik Stillblade
SET @entry = 22442;
SET @text = 'How may I assist you?';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text`              WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Trixy the Fixer
SET @entry = 30436;
SET @text = 'Got something that needs fixin\'?';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text`              WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Not a trainer anymore
DELETE FROM `npc_trainer` WHERE `id` IN (5153,30436,22442);

-- Turn into critters
UPDATE `creature_template` SET `rank`=0, `mingold`=0, `maxgold`=0, `speed_walk`=0.7, `speed_run`=1.1,`damagemodifier`=1, `healthmodifier`=1.2, `lootid`=0, `minlevel`=1, `maxlevel`=1, `type`=8, `flags_extra`=0 WHERE `entry` IN (
28140, -- Gorloc Hatchling
28139  -- Wolvar Pup
);
