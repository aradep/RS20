-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater creature templates
-- -----------------------------------

-- Creatures
REPLACE INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES 
(126, 983, 'Murloc Coastrunner', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(127, 1995, 'Murloc Tidehunter', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(422, 506, 'Murloc Flesheater', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(458, 757, 'Murloc Hunter', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(513, 1994, 'Murloc Netter', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(517, 1079, 'Murloc Oracle', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(544, 5243, 'Murloc Nightcrawler', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(575, 1405, 'Fire Elemental', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.5, 0, 1, 0, 2048, 4, 0, 1, 0, '', ''),
(578, 391, 'Murloc Scout', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(674, 7202, 'Goblin Worker', '', NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(883, 347, 'Deer', '', NULL, 0, 45, 45, 31, 0, 1, 0.85714, 1, 0, 1, 0, 2048, 8, 0, 1, 2, '', ''),
(1094, 7201, 'Goblin Miner', '', NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(1095, 7205, 'Goblin Foreman', '', NULL, 0, 78, 80, 47, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(1096, 7197, 'Goblin Geologist', '', NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(2830, 1105, 'Buzzard', NULL, NULL, 0, 78, 80, 73, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(2831, 1106, 'Giant Buzzard', NULL, NULL, 0, 78, 80, 73, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4020, 358, 'Animated Sap', NULL, NULL, 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 10, 0, 1, 0, 'SmartAI', ''),
(4022, 3022, 'Harpy Scout', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, '', ''),
(4023, 6813, 'Harpy Rogue', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4024, 10870, 'Harpy Soldier', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4025, 10869, 'Harpy Ambusher', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4026, 10282, 'Harpy Windcaller', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4027, 10871, 'Harpy Storm Witch', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(12579, 2295, 'Harpy Matriarch', NULL, NULL, 0, 81, 81, 514, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4142, 5052, 'Steelshell Tortoise', NULL, NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4143, 2308, 'Steelshell Snapper', NULL, NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4144, 2307, 'Steelshell Borer', NULL, NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4382, 2024, 'Cave Creeper', '', NULL, 0, 81, 82, 14, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(4385, 697, 'Cave Rager', '', NULL, 0, 81, 82, 14, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(4387, 1549, 'Cave Beast', '', NULL, 0, 81, 82, 14, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(5856, 4456, 'Crystal Spider', '', NULL, 0, 80, 80, 575, 0, 0.9, 1.1, 0.6, 1, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(5951, 1560, 'Hare', NULL, NULL, 0, 41, 41, 31, 0, 1, 0.85714, 1, 0, 1, 0, 2048, 8, 0, 1, 2, '', ''),
(6010, 1913, 'Felhound', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(6117, 10700, 'Lost Soul', NULL, NULL, 0, 81, 82, 21, 0, 0.9, 1.1, 1, 1, 8, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(7042, 2554, 'Flamescale Dragonspawn', NULL, NULL, 0, 78, 80, 103, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 2, 0, 1, 0, 'SmartAI', ''),
(7043, 8309, 'Flamescale Wyrmkin', NULL, NULL, 0, 78, 80, 103, 0, 0.9, 1.1, 1, 0, 8, 0, 2048, 2, 0, 1, 0, 'SmartAI', ''),
(7049, 457, 'Flamescale Broodling', NULL, NULL, 0, 78, 80, 103, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 2, 0, 1, 0, 'SmartAI', ''),
(7105, 2019, 'Darkfire Satyr', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7106, 8575, 'Darkfire Rogue', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7107, 11337, 'Darkfire Trickster', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7108, 11333, 'Darkfire Betrayer', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7109, 11334, 'Darkfire Felsworn', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7110, 11336, 'Darkfire Shadowstalker', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7111, 11335, 'Darkfire Hellcaller', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 8, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7144, 10621, 'Withered Treant', '', NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 4, 0, 1, 0, '', ''),
(7149, 12929, 'Withered Ancient', NULL, NULL, 0, 81, 82, 7, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(7523, 10701, 'Suffering Spectre', NULL, NULL, 0, 81, 82, 21, 0, 0.9, 1.1, 1, 1, 2, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(7524, 10702, 'Restless Highborne', NULL, NULL, 0, 81, 82, 21, 0, 0.9, 1.1, 1, 1, 2, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(7765, 1918, 'Rock Giant', NULL, NULL, 0, 81, 82, 7, 0, 0.9, 1.1, 0.8, 1, 1, 512, 2048, 5, 0, 1, 0, '', ''),
(10816, 7550, 'Skeleton', NULL, NULL, 0, 78, 80, 21, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 6, 0, 1, 0, '', ''),
(10991, 494, 'Ashmane Gnoll', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11440, 12471, 'Highland Ogre', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11441, 12473, 'Highland Brute', NULL, NULL, 5746, 78, 80, 45, 1, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11442, 12473, 'Highland Mauler', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11443, 12472, 'Highland Ogre Mage', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11444, 11537, 'Highland Mage-Lord', NULL, NULL, 5746, 81, 82, 45, 1, 0.9, 1.1, 0.8, 1, 8, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11445, 11564, 'Highland Ogre Captain', NULL, NULL, 0, 81, 82, 45, 0, 0.9, 1.1, 0.8, 1, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11448, 14423, 'Highland Ogre Warlock', NULL, NULL, 0, 81, 82, 45, 0, 0.9, 1.1, 0.65, 1, 8, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11450, 10709, 'Highland Reaver', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11451, 11345, 'Felspawn Satyr', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11452, 2021, 'Felspawn Rogue', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11453, 2020, 'Felspawn Trickster', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11455, 7649, 'Felspawn Assassin', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 8, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11456, 2014, 'Felspawn Shadowstalker', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11457, 11340, 'Felspawn Hellcaller', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11476, 11078, 'Skeletal Highborne', NULL, NULL, 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(11477, 14391, 'Rotting Highborne', NULL, NULL, 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 6, 0, 1, 0, '', ''),
(11837, 494, 'Ashmane Shaman', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11838, 494, 'Ashmane Mystic', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11839, 494, 'Ashmane Brute', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11840, 10792, 'Ashmane Alpha', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(12418, 2712, 'Hyena', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 1, 1, 1, 1, 'SmartAI', ''),
(12836, 12750, 'Wandering Ancient', NULL, NULL, 0, 81, 82, 7, 0, 0.9, 1.1, 1, 1, 1, 64, 2048, 5, 0, 1, 1, 'SmartAI', ''),
(13036, 12966, 'Hyena Alpha', NULL, NULL, 0, 78, 81, 45, 0, 1.14, 1.14286, 0.8, 1, 1, 0, 2048, 1, 1, 1, 1, 'SmartAI', ''),
(13276, 911, 'Felspawn Imp', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(16974, 17081, 'Voidwalker', '', '', 0, 78, 80, 954, 0, 0.9, 1.1, 1.5, 0, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(17014, 18953, 'Collapsing Voidwalker', '', '', 0, 78, 80, 954, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(17722, 18396, 'Naga Sorceress', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17800, 18389, 'Naga Myrmidon', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17801, 18392, 'Naga Siren', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17802, 18398, 'Naga Warrior', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17803, 18391, 'Naga Oracle', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17917, 5564, 'Water Elemental', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 0.6, 0, 2, 0, 2048, 4, 8, 1, 1, 'SmartAI', ''),
(17957, 18384, 'Naga Champion', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 1, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17958, 18387, 'Naga Defender', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 1, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17960, 18395, 'Naga Soothsayer', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 8, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17961, 18386, 'Naga Enchantress', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 2, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17981, 18366, 'Surging Voidwalker', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(18869, 18050, 'Voidwraith', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(18870, 18990, 'Voidcaller', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(20734, 19735, 'Daggermaw Raptor', '', NULL, 0, 78, 80, 48, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, '', ''),
(20749, 20838, 'Scalewing Serpent', NULL, NULL, 0, 78, 80, 14, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(20751, 19759, 'Daggermaw Lashtail', NULL, NULL, 0, 78, 80, 48, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(20754, 19766, 'Daggermaw Devourer', '', NULL, 0, 78, 80, 48, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, '', ''),
(21022, 19705, 'Grovestalker Lynx', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(21865, 19365, 'Naga Ambusher', NULL, NULL, 0, 78, 80, 14, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(25685, 23317, 'Gorloc Waddler', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(25686, 23323, 'Gorloc Gibberer', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, '', ''),
(25687, 23321, 'Gorloc Streamrunner', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, '', ''),
(25688, 23319, 'Gorloc Oracle', '', '', 0, 81, 82, 18, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 7, 0, 1, 0, '', ''),
(25699, 23318, 'Gorloc Mud Splasher', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(25700, 23320, 'Gorloc Hunter', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(25701, 23322, 'Gorloc Dredger', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(26356, 23826, 'Redfang Hunter', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26357, 23826, 'Redfang Warrior', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26428, 23772, 'Redfang Shaman', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 8, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26434, 23772, 'Redfang Trapper', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26436, 23772, 'Redfang Elder', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(27834, 19110, 'Shadowfiend', '', '', 0, 78, 80, 14, 0, 0.9, 1.1, 1.5, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(28002, 15145, 'Mangal Crocolisk', '', '', 0, 78, 80, 14, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(28076, 25380, 'Ragepaw Berserker', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.35, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28077, 25385, 'Ragepaw Tracker', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.2, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28078, 25376, 'Ragepaw Ravager', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.35, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28079, 25387, 'Ragepaw Hunter', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.2, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28080, 25640, 'Ragepaw Spearbearer', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.35, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28081, 25385, 'Ragepaw Scavenger', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.2, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28139, 25382, 'Wolvar Pup', '', '', 0, 41, 41, 16, 0, 0.7, 1.1, 1, 0, 1, 32768, 2048, 8, 0, 1, 0, '', ''),
(28140, 25133, 'Gorloc Hatchling', '', '', 0, 41, 41, 18, 0, 0.7, 1.1, 1, 0, 1, 32768, 2048, 8, 0, 1, 0, '', ''),
(28384, 21130, 'Air Elemental', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 2, 0, 2, 0, 2048, 4, 8, 1, 0, '', ''),
(28927, 169,   'Enchanted Tiki Warrior', '', '', 0, 78, 80, 795, 0, 0.9, 1.1, 0.7, 0, 2, 32776, 2048, 10, 4096, 1, 0, 'SmartAI', ''),
(32230, 26214, 'Void Lord', '', '', 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 3, 72, 1, 0, 'SmartAI', ''),
(46437, 23772, 'Redfang Ursa', '', '', 0, 81, 82, 2001, 0, 0.9, 1.1, 1, 1, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(46438, 23826, 'Redfang Den Watcher', '', '', 0, 81, 82, 2001, 0, 0.9, 1.1, 1, 1, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),


-- Giant cosmetic fighting elementals
(51502, 11121, 'Firelord', '', '', 0, 83, 83, 795, 131, 1, 1.14286, 2.1, 3, 1, 33587200, 2048, 7, 0, 1, 2, 'SmartAI', ''),
(54435, 14992, 'Windseeker', '', '', 0, 83, 83, 290, 0, 1, 1, 1.6, 3, 1, 33587200, 2048, 4, 4, 1, 2, 'SmartAI', ''),
-- Elites
(31911, 25376, 'Tanak Ragepaw', '', '', 0, 82, 82, 16, 0, 0.8, 1.1, 2, 3, 1, 32768, 2048, 7, 4, 1, 0, '', ''),
(7995,   7803, 'Hexlord Rashiki', '', '', 0, 82, 82, 7, 0, 0.8, 1.1, 1, 3, 8, 32768, 2048, 7, 4, 1, 0, 'SmartAI', ''),
(10648,  2879, 'Xavaric', NULL, NULL, 0, 81, 82, 90, 0, 0.9, 1.1, 1, 1, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(11501, 11583, 'Warlord Skullcrush', NULL, NULL, 0, 82, 82, 45, 0, 0.8, 1.1, 1, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(12203, 23356, 'Earthshaker', 'The Evergreen', NULL, 0, 82, 82, 91, 0, 0.8, 1.1, 2, 3, 1, 64, 2048, 5, 12, 1, 0, 'SmartAI', ''),
(12800,  4269, 'Chimaereon', NULL, NULL, 0, 82, 82, 16, 0, 0.8, 1.1, 2, 3, 1, 64, 2048, 1, 65541, 1, 0, 'SmartAI', ''),
(14321, 11561, 'Watcher One-Eye', NULL, NULL, 5734, 82, 82, 45, 1, 0.8, 1.1, 0.65, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(14323, 11561, 'Grimgut', NULL, NULL, 5733, 82, 82, 45, 1, 0.8, 1.1, 1, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(14324, 11537, 'Mokor the Tactician', NULL, NULL, 5742, 82, 82, 45, 1, 0.8, 1.1, 0.8, 3, 2, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(14326, 11561, 'Guard-Captain Clogg', NULL, NULL, 5735, 82, 82, 45, 1, 0.8, 1.1, 1, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(25693, 22607, 'King Gorloc', '', '', 0, 82, 82, 18, 0, 0.8, 1.1, 2.5, 3, 1, 0, 2048, 7, 4, 1, 0, '', ''),
(46439, 23774, 'Snarlax Snowpelt', '', '', 0, 82, 82, 2001, 0, 0.8, 1.1, 1, 3, 2, 32768, 2048, 7, 4, 1, 0, 'SmartAI', ''),
(32485, 28052, 'Shi\'rek', 'The Devourer', '', 0, 83, 83, 14, 0, 1, 1.14286, 1, 3, 1, 0, 2048, 1, 4, 1, 0, 'SmartAI', ''),
(50329, 28133, 'Phytos', 'The Glowing One', '', 0, 82, 82, 16, 0, 0.8, 1.1, 0.55, 3, 1, 32832, 2048, 4, 332, 1, 0, 'SmartAI', ''),
(71000, 26348, 'Shadow of the Betrayer', '', '', 0, 82, 82, 16, 0, 0.8, 1.1, 2, 3, 1, 514, 2048, 3, 76, 1, 1, 'SmartAI', '');
-- Questgivers
(32565, 28059, 'Commander Gara', 'Azsharan Expedition', '', 32565, 82, 82, 2007, 3, 1, 1, 1.2, 1, 1, 32768, 2048, 7, 4096, 1, 0, '', ''),
(33642, 28770, 'Purveyor Delryn', 'Azsharan Expedition', '', 33642, 82, 82, 2007, 3, 1, 1, 1.1, 1, 8, 0, 2048, 7, 0, 1, 0, '', ''),
(39283, 31391, 'Farseer Serena', 'Azsharan Expedition', '', 39283, 82, 82, 2007, 3, 1, 1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, '', ''),
(52291, 30465, 'Spymaster Jarre', 'Azsharan Expedition', '', 52291, 82, 82, 2007, 3, 1, 1, 0.9, 1, 4, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(30469, 15577, 'Forward Scout Razza', 'Azsharan Expedition', '', 30469, 82, 82, 2007, 3, 1, 1, 1.2, 1, 1, 0, 2048, 7, 0, 1, 0, '', ''),
-- Vendors
(30469, 23080, 'Trixy the Fixer', 'Supplies', '', 0, 80, 80, 2007, 131, 1, 1.14286, 1.5, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(5153,  3072,  'Packmaster Stonebrow', 'Supplies', '', 0, 80, 80, 2007, 131, 1, 1, 1.2, 1, 1, 32768, 2048, 7, 0, 1, 2, '', ''),
(22442, 27888, 'Malik Stillblade', 'Supplies', '', 0, 80, 80, 2007, 131, 1, 1.14286, 1, 0, 1, 0, 2048, 7, 0, 1, 2, '', ''),
-- Peacekeepers
(4624, 28780, 'Kirin Tor Guardian', NULL, NULL, 0, 80, 80, 2008, 0, 1, 1, 1.15, 1, 8, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(64624, 4261,  'Orc Bruiser', NULL, NULL, 0, 80, 80, 2008, 0, 1, 1, 1.15, 1, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),


-- Central
-- Ruins Naga
17721, -- Coilfang Engineer
17722, -- Coilfang Sorceress
17800, -- Coilfang Myrmidon
17801, -- Coilfang Siren
17802, -- Coilfang Warrior
17803, -- Coilfang Oracle
17805, -- Coilfang Slavemaster
17917, -- Coilfang Water Elemental
21865, -- Coilfang Ambusher
-- Ruins murlocs
126, -- Murloc Coastrunner
127, -- Murloc Tidehunter
422, -- Murloc Flesheater
458, -- Murloc Hunter
513, -- Murloc Netter
517, -- Murloc Oracle
544, -- Murloc Nightcrawler
545, -- Murloc Tidecaller
578, -- Murloc Scout
6250,-- Crawler
-- Field
21022, -- Grovestalker Lynx
12836, -- Wandering Protector (ELITE)
-- Field wreckage
2830,  -- Buzzard
2831,  -- Giant Buzzard
10816, -- Wandering Skeleton
-- Furbolg hold
26356, -- Redfang Hunter
26357, -- Redfang Warrior
26428, -- Redfang Shaman
26434, -- Redfang Trapper
26436, -- Redfang Elder
46437, -- Redfang Ursa (ELITE)
46438, -- Redfang Den Watcher (ELITE)
5097,  -- Lupine Delusion
5433,  -- Tamed Bear
-- Satyr camp
7105,  -- Jadefire Satyr
7106,  -- Jadefire Rogue
7107,  -- Jadefire Trickster
7108,  -- Jadefire Betrayer
7109,  -- Jadefire Felsworn
7110,  -- Jadefire Shadowstalker
7111,  -- Jadefire Hellcaller
6010,  -- Felhound
10648, -- Xavaric

-- Horde side
-- Swamp raptors
20734, -- Daggermaw Raptor
20751, -- Daggermaw Lashtail
20754, -- Daggermaw Devourer
-- Samp serpent
20749, -- Scalewing Serpent
-- Swamp croc
28002, -- Mangal Crocolisk
-- Tiki warrior
28927, -- Enchanted Tiki Warrior
-- Swamp dragonkin
7042,  -- Flamescale Dragonspawn
7043,  -- Flamescale Wyrmkin
7049,  -- Flamescale Broodling
-- Swamp gnolls
11840, -- Shadowhide Alpha
11838, -- Shadowhide Mystic
11839, -- Shadowhide Brute
11837, -- Shadowhide Shaman
10991, -- Shadowhide Gnoll

-- Alliance Side
-- Goblin Miners
674, -- Goblin Worker
1094, -- Goblin Miner
1095, -- Goblin Foreman
1096, -- Goblin Geologist
-- Ogres
11440, -- Highlands Enforcer
11442, -- Highlands Mauler
11443, -- Highlands Ogre-Mage
12418, -- Highlands Hyena
11441, -- Highlands Brute
11450, -- Highlands Reaver
-- Moonwell murlocs
25685, -- Gorloc Waddler
25686, -- Gorloc Gibberer
25687, -- Gorloc Steam Belcher
25699, -- Gorloc Mud Splasher
25700, -- Gorloc Hunter
25701, -- Gorloc Dredger
28140, -- Gorloc Hatchling
-- Ragepaw Hold exterior
28077, -- Ragepaw Tracker
28079, -- Ragepaw Hunter
28081, -- Ragepaw Scavenger
28139, -- Wolvar Pup
-- Ragepaw Hold interior
28080, -- Ragepaw Spearbearer
28078, -- Ragepaw Ravager
28076, -- Ragepaw Berserker

-- Dragon Side
-- Burnt Grove
7144,  -- Withered Treant
7149,  -- Withered Protector (ELITE)
12579, -- Bloodfury Ripper
4022,  -- Bloodfury Harpy
4023,  -- Bloodfury Roguefeather
4024,  -- Bloodfury Slayer
4025,  -- Bloodfury Ambusher
4026,  -- Bloodfury Windcaller
4027,  -- Bloodfury Storm Witch
4142,  -- Sparkleshell Tortoise
4143,  -- Sparkleshell Snapper
4144,  -- Sparkleshell Borer
575,    -- Fire Elemental
28384,  -- Air Elemental
-- Temple Ruins
11451, -- Wildspawn Satyr
11452, -- Wildspawn Rogue
11453, -- Wildspawn Trickster
11455, -- Wildspawn Felsworn
11456, -- Wildspawn Shadowstalker
11457, -- Wildspawn Hellcaller
13276, -- Wildspawn Imp
-- Temple Interior
16974, -- Rogue Voidwalker
17014, -- Collapsing Voidwalker
17981, -- Voidspawn
18869, -- Unstable Voidwraith
18870, -- Voidshrieker
27834  -- Shadowfiend

-- Turn into critters
UPDATE `creature_template` SET `rank`=0, `mingold`=0, `maxgold`=0, `speed_walk`=0.7, `speed_run`=1.1,`damagemodifier`=1, `healthmodifier`=1.2, `lootid`=0, `minlevel`=1, `maxlevel`=1, `type`=8, `flags_extra`=0 WHERE `entry` IN (
28140, -- Gorloc Hatchling
28139  -- Wolvar Pup
);

-- MAKE ELITE
UPDATE `creature_template` SET `rank`=1, `mingold`=1000, `maxgold`=20000, `speed_walk`=0.9, `speed_run`=1.1,`damagemodifier`=8, `healthmodifier`=6, `manamodifier`=6, `lootid`=(`entry`), `flags_extra`=0 WHERE `entry` IN (
21873, -- Coilfang Guardian (ELITE)
30633,  -- Water Terror (ELITE)
17958, -- Coilfang Defender (ELITE)
17960, -- Coilfang Soothsayer (ELITE)
17961, -- Coilfang Enchantress (ELITE)
17957, -- Coilfang Champion (ELITE)
18681, -- Coilfang Emissary (ELITE)
7149,  -- Withered Protector (ELITE)
13036, -- Hyena alpha --
46437, -- Redfang Ursa (ELITE)
46438, -- Redfang Den Watcher (ELITE)
10648, -- Xavaric (ELITE)
12836, -- Wandering Protector (ELITE)
23725, -- Stone Giant (ELITE)
11444, -- Gordok Mage-Lord (ELITE)
11445, -- Gordok Captain (ELITE)
11448, -- Gordok Warlock (ELITE)
11859, -- Doomguard (ELITE)
25688, -- Gorloc Oracle (ELITE)
5856,  -- Crystal Spider (ELITE)
11477, -- Rotting Highborne (ELITE)
11476, -- Skeletal Highborne (ELITE)
7524,  -- Anguished Highborne (ELITE)
7523,  -- Suffering Highborne (ELITE)
6117,  -- Highborne Lichling (ELITE)
6116,  -- Highborne Apparition (ELITE)
4387,  -- Cave Beast (ELITE)
4382,  -- Cave Creeper (ELITE)
4385,  -- Cave Rager (ELITE)
4020,  -- Sap Beast (ELITE)
7765,  -- Rock Giant (ELITE)
4456,  -- Glassweb Spider (ELITE)
32230, -- Void Lord (ELITE)
33806  -- Void Beast (ELITE)
);

-- MAKE BOSS
UPDATE `creature_template` SET `rank`=3, `type_flags`=`type_flags`|4, `mingold`=100000, `maxgold`=250000, `speed_walk`=0.8, `speed_run`=1.1,`damagemodifier`=15, `healthmodifier`=25, `manamodifier`=20, `lootid`=(`entry`), `flags_extra`=0 WHERE `entry` IN (
31911, -- Tanak Ragepaw (5-MAN BOSS)
25693, -- King Gorloc (5-MAN BOSS)
50329, -- Phytos (5-MAN BOSS)
12203, -- Earthshaker (5-MAN BOSS)
14321, -- Guard Fengus (5-MAN BOSS)
14323, -- Guard Slip'kik (5-MAN BOSS)
14326, -- Guard Mol'dar (5-MAN BOSS)
14324, -- Cho'rush the Observer (5-MAN BOSS)
12800, -- Chimaeeon (5-MAN BOSS)
7995, -- Hexxer (5-MAN BOSS)
46439, -- Snarlax Snowpelt (5-MAN BOSS)
32485 -- Shi'rek (5-MAN BOSS)  
);

-- MAKE SUPER BOSS
UPDATE `creature_template` SET `rank`=3, `type_flags`=`type_flags`|4, `mingold`=500000, `maxgold`=1000000, `speed_walk`=0.8, `speed_run`=1.1,`damagemodifier`=20, `healthmodifier`=60, `lootid`=(`entry`), `flags_extra`=0 WHERE `entry` IN (
11501, -- King Gordok (5-MAN BOSS)
71000 -- Dark Illidan (5-MAN BOSS)
);
UPDATE `creature_equip_template` SET `ItemID1`=12775 WHERE  `CreatureID`=11501 AND `ID`=1;

-- MAKE WORLD BOSS
UPDATE `creature_template` SET `rank`=4, `type_flags`=`type_flags`|4, `mingold`=2000000, `maxgold`=3000000, `speed_walk`=0.8, `speed_run`=1.1,`damagemodifier`=40, `healthmodifier`=300, `lootid`=(`entry`), `flags_extra`=0 WHERE `entry` IN (
18728, -- Kazzak 
91217 -- Lurker
);

-- Make hit harder
UPDATE `creature_template` SET `healthmodifier`=10, `DamageModifier` = 10 WHERE `entry` IN (4624,64624);

-- Lower health
UPDATE `creature_template` SET `healthmodifier`=2 WHERE `entry` IN (11859);

-- higher health
UPDATE `creature_template` SET `healthmodifier`=8 WHERE `entry` IN (5194);

-- Packmaster
    SET @entry = 5153;
    SET @text = 'What kin I do for ye?';
    SET @broadcast = (@entry + 100000);
    UPDATE `creature_template` SET `gossip_menu_id`=@entry WHERE  `entry`=@entry;
    DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
    INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
    DELETE FROM `npc_text`              WHERE `id` = @entry;
    INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
    DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
    INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
    -- Stillblade
    SET @entry = 22442;
    SET @text = 'How may I assist you?';
    SET @broadcast = (@entry + 100000);
    UPDATE `creature_template` SET `gossip_menu_id`=@entry WHERE  `entry`=@entry;
    DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
    INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
    DELETE FROM `npc_text`              WHERE `id` = @entry;
    INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
    DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
    INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
    -- Trixy
    SET @entry = 30436;
    SET @text = 'Got something that needs fixin\'?';
    SET @broadcast = (@entry + 100000);
    UPDATE `creature_template` SET `gossip_menu_id`=@entry WHERE  `entry`=@entry;
    DELETE FROM `gossip_menu`           WHERE `menuID` = @entry AND `TextID` = @entry;
    INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
    DELETE FROM `npc_text`              WHERE `id` = @entry;
    INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
    DELETE FROM `broadcast_text`        WHERE `id` IN (@broadcast);
    INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
    
    DELETE FROM `npc_trainer` WHERE `id` IN (5153,30436,22442);
    
    UPDATE `creature_template` SET `IconName`='Repair', `gossip_menu_id`=0, `npcflag`=4224 WHERE `entry` IN (5153,22442,30436);