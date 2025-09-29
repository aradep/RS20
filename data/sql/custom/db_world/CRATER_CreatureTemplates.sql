-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater creature templates
-- -----------------------------------

-- Creatures
REPLACE INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES 
(126, 'Murloc Coastrunner', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(127, 'Murloc Tidehunter', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(422, 'Murloc Flesheater', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(458, 'Murloc Hunter', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(513, 'Murloc Netter', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(517, 'Murloc Oracle', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(544, 'Murloc Nightcrawler', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(575, 'Fire Elemental', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.5, 0, 1, 0, 2048, 4, 0, 1, 0, '', ''),
(578, 'Murloc Scout', '', NULL, 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(674, 'Goblin Worker', '', NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(883, 'Deer', '', NULL, 0, 45, 45, 31, 0, 1, 0.85714, 1, 0, 1, 0, 2048, 8, 0, 1, 2, '', ''),
(1094, 'Goblin Miner', '', NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(1095, 'Goblin Foreman', '', NULL, 0, 78, 80, 47, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(1096, 'Goblin Geologist', '', NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(2830, 'Buzzard', NULL, NULL, 0, 78, 80, 73, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(2831, 'Giant Buzzard', NULL, NULL, 0, 78, 80, 73, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4020, 'Animated Sap', NULL, NULL, 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 10, 0, 1, 0, 'SmartAI', ''),
(4022, 'Harpy Scout', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, '', ''),
(4023, 'Harpy Rogue', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4024, 'Harpy Soldier', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4025, 'Harpy Ambusher', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4026, 'Harpy Windcaller', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4027, 'Harpy Storm Witch', NULL, NULL, 0, 78, 80, 514, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(12579, 'Harpy Matriarch', NULL, NULL, 0, 81, 81, 514, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(4142, 'Steelshell Tortoise', NULL, NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4143, 'Steelshell Snapper', NULL, NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4144, 'Steelshell Borer', NULL, NULL, 0, 78, 80, 7, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(4382, 'Cave Creeper', '', NULL, 0, 81, 82, 14, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(4385, 'Cave Rager', '', NULL, 0, 81, 82, 14, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(4387, 'Cave Beast', '', NULL, 0, 81, 82, 14, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(5856, 'Crystal Spider', '', NULL, 0, 80, 80, 575, 0, 0.9, 1.1, 0.6, 1, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(5951, 'Hare', NULL, NULL, 0, 41, 41, 31, 0, 1, 0.85714, 1, 0, 1, 0, 2048, 8, 0, 1, 2, '', ''),
(6010, 'Felhound', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(6117, 'Lost Soul', NULL, NULL, 0, 81, 82, 21, 0, 0.9, 1.1, 1, 1, 8, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(7042, 'Flamescale Dragonspawn', NULL, NULL, 0, 78, 80, 103, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 2, 0, 1, 0, 'SmartAI', ''),
(7043, 'Flamescale Wyrmkin', NULL, NULL, 0, 78, 80, 103, 0, 0.9, 1.1, 1, 0, 8, 0, 2048, 2, 0, 1, 0, 'SmartAI', ''),
(7049, 'Flamescale Broodling', NULL, NULL, 0, 78, 80, 103, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 2, 0, 1, 0, 'SmartAI', ''),
(7105, 'Darkfire Satyr', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7106, 'Darkfire Rogue', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7107, 'Darkfire Trickster', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7108, 'Darkfire Betrayer', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7109, 'Darkfire Felsworn', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7110, 'Darkfire Shadowstalker', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7111, 'Darkfire Hellcaller', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 8, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(7144, 'Withered Treant', '', NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 4, 0, 1, 0, '', ''),
(7149, 'Withered Ancient', NULL, NULL, 0, 81, 82, 7, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 4, 0, 1, 0, 'SmartAI', ''),
(7523, 'Suffering Spectre', NULL, NULL, 0, 81, 82, 21, 0, 0.9, 1.1, 1, 1, 2, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(7524, 'Restless Highborne', NULL, NULL, 0, 81, 82, 21, 0, 0.9, 1.1, 1, 1, 2, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(7765, 'Rock Giant', NULL, NULL, 0, 81, 82, 7, 0, 0.9, 1.1, 0.8, 1, 1, 512, 2048, 5, 0, 1, 0, '', ''),
(10816, 'Skeleton', NULL, NULL, 0, 78, 80, 21, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 6, 0, 1, 0, '', ''),
(10991, 'Ashmane Gnoll', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11440, 'Highland Ogre', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11441, 'Highland Brute', NULL, NULL, 5746, 78, 80, 45, 1, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11442, 'Highland Mauler', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11443, 'Highland Ogre Mage', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11444, 'Highland Mage-Lord', NULL, NULL, 5746, 81, 82, 45, 1, 0.9, 1.1, 0.8, 1, 8, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11445, 'Highland Ogre Captain', NULL, NULL, 0, 81, 82, 45, 0, 0.9, 1.1, 0.8, 1, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11448, 'Highland Ogre Warlock', NULL, NULL, 0, 81, 82, 45, 0, 0.9, 1.1, 0.65, 1, 8, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11450, 'Highland Reaver', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(11451, 'Felspawn Satyr', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11452, 'Felspawn Rogue', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11453, 'Felspawn Trickster', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11455, 'Felspawn Assassin', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 8, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11456, 'Felspawn Shadowstalker', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11457, 'Felspawn Hellcaller', NULL, NULL, 0, 78, 80, 90, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(11476, 'Skeletal Highborne', NULL, NULL, 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 6, 0, 1, 0, 'SmartAI', ''),
(11477, 'Rotting Highborne', NULL, NULL, 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 6, 0, 1, 0, '', ''),
(11837, 'Ashmane Shaman', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11838, 'Ashmane Mystic', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11839, 'Ashmane Brute', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(11840, 'Ashmane Alpha', NULL, NULL, 0, 78, 80, 39, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(12418, 'Hyena', NULL, NULL, 0, 78, 80, 45, 0, 0.9, 1.1, 0.65, 0, 1, 0, 2048, 1, 1, 1, 1, 'SmartAI', ''),
(12836, 'Wandering Ancient', NULL, NULL, 0, 81, 82, 7, 0, 0.9, 1.1, 1, 1, 1, 64, 2048, 5, 0, 1, 1, 'SmartAI', ''),
(13036, 'Hyena Alpha', NULL, NULL, 0, 78, 81, 45, 0, 1.14, 1.14286, 0.8, 1, 1, 0, 2048, 1, 1, 1, 1, 'SmartAI', ''),
(13276, 'Felspawn Imp', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 1, 'SmartAI', ''),
(16974, 'Voidwalker', '', '', 0, 78, 80, 954, 0, 0.9, 1.1, 1.5, 0, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(17014, 'Collapsing Voidwalker', '', '', 0, 78, 80, 954, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(17722, 'Naga Sorceress', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17800, 'Naga Myrmidon', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17801, 'Naga Siren', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17802, 'Naga Warrior', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17803, 'Naga Oracle', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17917, 'Water Elemental', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 0.6, 0, 2, 0, 2048, 4, 8, 1, 1, 'SmartAI', ''),
(17957, 'Naga Champion', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 1, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17958, 'Naga Defender', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 1, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17960, 'Naga Soothsayer', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 8, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17961, 'Naga Enchantress', NULL, NULL, 0, 81, 82, 74, 0, 0.9, 1.1, 1, 1, 2, 32832, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(17981, 'Surging Voidwalker', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(18869, 'Voidwraith', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(18870, 'Voidcaller', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(20734, 'Daggermaw Raptor', '', NULL, 0, 78, 80, 48, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, '', ''),
(20749, 'Scalewing Serpent', NULL, NULL, 0, 78, 80, 14, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(20751, 'Daggermaw Lashtail', NULL, NULL, 0, 78, 80, 48, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(20754, 'Daggermaw Devourer', '', NULL, 0, 78, 80, 48, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, '', ''),
(21022, 'Grovestalker Lynx', NULL, NULL, 0, 78, 80, 16, 0, 0.9, 1.1, 1, 0, 1, 0, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(21865, 'Naga Ambusher', NULL, NULL, 0, 78, 80, 14, 0, 0.9, 1.1, 1, 0, 2, 0, 2048, 7, 0, 1, 1, 'SmartAI', ''),
(25685, 'Gorloc Waddler', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(25686, 'Gorloc Gibberer', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, '', ''),
(25687, 'Gorloc Streamrunner', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 2, 32768, 2048, 7, 0, 1, 0, '', ''),
(25688, 'Gorloc Oracle', '', '', 0, 81, 82, 18, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 7, 0, 1, 0, '', ''),
(25699, 'Gorloc Mud Splasher', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(25700, 'Gorloc Hunter', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(25701, 'Gorloc Dredger', '', '', 0, 78, 80, 18, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 7, 0, 1, 0, '', ''),
(26356, 'Redfang Hunter', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26357, 'Redfang Warrior', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26428, 'Redfang Shaman', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 8, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26434, 'Redfang Trapper', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(26436, 'Redfang Elder', '', '', 0, 78, 80, 2001, 0, 0.9, 1.1, 0.8, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(27834, 'Shadowfiend', '', '', 0, 78, 80, 14, 0, 0.9, 1.1, 1.5, 0, 1, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(28002, 'Mangal Crocolisk', '', '', 0, 78, 80, 14, 0, 0.9, 1.1, 1, 0, 1, 32768, 2048, 1, 1, 1, 0, 'SmartAI', ''),
(28076, 'Ragepaw Berserker', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.35, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28077, 'Ragepaw Tracker', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.2, 0, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28078, 'Ragepaw Ravager', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.35, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28079, 'Ragepaw Hunter', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.2, 0, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28080, 'Ragepaw Spearbearer', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.35, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28081, 'Ragepaw Scavenger', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 1.2, 0, 1, 0, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(28139, 'Wolvar Pup', '', '', 0, 41, 41, 16, 0, 0.7, 1.1, 1, 0, 1, 32768, 2048, 8, 0, 1, 0, '', ''),
(28140, 'Gorloc Hatchling', '', '', 0, 41, 41, 18, 0, 0.7, 1.1, 1, 0, 1, 32768, 2048, 8, 0, 1, 0, '', ''),
(28384, 'Air Elemental', '', '', 0, 78, 80, 16, 0, 0.9, 1.1, 2, 0, 2, 0, 2048, 4, 8, 1, 0, '', ''),
(28927, 'Enchanted Tiki Warrior', '', '', 0, 78, 80, 795, 0, 0.9, 1.1, 0.7, 0, 2, 32776, 2048, 10, 4096, 1, 0, 'SmartAI', ''),
(32230, 'Void Lord', '', '', 0, 81, 82, 16, 0, 0.9, 1.1, 1, 1, 1, 0, 2048, 3, 72, 1, 0, 'SmartAI', ''),
(46437, 'Redfang Ursa', '', '', 0, 81, 82, 2001, 0, 0.9, 1.1, 1, 1, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(46438, 'Redfang Den Watcher', '', '', 0, 81, 82, 2001, 0, 0.9, 1.1, 1, 1, 2, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
-- Giant cosmetic fighting elementals
(51502, 'Firelord', '', '', 0, 83, 83, 795, 131, 1, 1.14286, 2.1, 3, 1, 33587200, 2048, 7, 0, 1, 2, 'SmartAI', ''),
(54435, 'Windseeker', '', '', 0, 83, 83, 290, 0, 1, 1, 1.6, 3, 1, 33587200, 2048, 4, 4, 1, 2, 'SmartAI', ''),
-- Elites
(31911, 'Tanak Ragepaw', '', '', 0, 82, 82, 16, 0, 0.8, 1.1, 2, 3, 1, 32768, 2048, 7, 4, 1, 0, '', ''),
(7995, 'Hexlord Rashiki', '', '', 0, 82, 82, 7, 0, 0.8, 1.1, 1, 3, 8, 32768, 2048, 7, 4, 1, 0, 'SmartAI', ''),
(10648, 'Xavaric', NULL, NULL, 0, 81, 82, 90, 0, 0.9, 1.1, 1, 1, 2, 0, 2048, 3, 0, 1, 0, 'SmartAI', ''),
(11501, 'Warlord Skullcrush', NULL, NULL, 0, 82, 82, 45, 0, 0.8, 1.1, 1, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(12203, 'Earthshaker', 'The Evergreen', NULL, 0, 82, 82, 91, 0, 0.8, 1.1, 2, 3, 1, 64, 2048, 5, 12, 1, 0, 'SmartAI', ''),
(12800, 'Chimaereon', NULL, NULL, 0, 82, 82, 16, 0, 0.8, 1.1, 2, 3, 1, 64, 2048, 1, 65541, 1, 0, 'SmartAI', ''),
(14321, 'Watcher One-Eye', NULL, NULL, 5734, 82, 82, 45, 1, 0.8, 1.1, 0.65, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(14323, 'Grimgut', NULL, NULL, 5733, 82, 82, 45, 1, 0.8, 1.1, 1, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(14324, 'Mokor the Tactician', NULL, NULL, 5742, 82, 82, 45, 1, 0.8, 1.1, 0.8, 3, 2, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(14326, 'Guard-Captain Clogg', NULL, NULL, 5735, 82, 82, 45, 1, 0.8, 1.1, 1, 3, 1, 0, 2048, 7, 4, 1, 1, 'SmartAI', ''),
(25693, 'King Gorloc', '', '', 0, 82, 82, 18, 0, 0.8, 1.1, 2.5, 3, 1, 0, 2048, 7, 4, 1, 0, '', ''),
(46439, 'Snarlax Snowpelt', '', '', 0, 82, 82, 2001, 0, 0.8, 1.1, 1, 3, 2, 32768, 2048, 7, 4, 1, 0, 'SmartAI', ''),
(32485, 'Shi\'rek', 'The Devourer', '', 0, 83, 83, 14, 0, 1, 1.14286, 1, 3, 1, 0, 2048, 1, 4, 1, 0, 'SmartAI', ''),
(50329, 'Phytos', 'The Glowing One', '', 0, 82, 82, 16, 0, 0.8, 1.1, 0.55, 3, 1, 32832, 2048, 4, 332, 1, 0, 'SmartAI', ''),
(71000, 'Shadow of the Betrayer', '', '', 0, 82, 82, 16, 0, 0.8, 1.1, 2, 3, 1, 514, 2048, 3, 76, 1, 1, 'SmartAI', ''),
-- Peacekeepers
(4624, 'Kirin Tor Guardian', NULL, NULL, 0, 80, 80, 2008, 0, 1, 1, 1.15, 1, 8, 32768, 2048, 7, 0, 1, 0, 'SmartAI', ''),
(64624, 'Orc Bruiser', NULL, NULL, 0, 80, 80, 2008, 0, 1, 1, 1.15, 1, 1, 32768, 2048, 7, 0, 1, 0, 'SmartAI', '');

-- Turn into critters
UPDATE `creature_template` SET `rank`=0, `mingold`=0, `maxgold`=0, `speed_walk`=0.7, `speed_run`=1.1,`damagemodifier`=1, `healthmodifier`=1.2, `lootid`=0, `minlevel`=1, `maxlevel`=1, `type`=8, `flags_extra`=0 WHERE `entry` IN (
28140, -- Gorloc Hatchling
28139  -- Wolvar Pup
);

/*
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
12836, -- Wandering Protector (ELITE Field wreckage
2830,  -- Buzzard
2831,  -- Giant Buzzard
10816, -- Wandering Skeleton
-- Furbolg hold
26356, -- Redfang Hunter
26357, -- Redfang Warrior
26428, -- Redfang Shaman
26434, -- Redfang Trapper
26436, -- Redfang Elder
46437, -- Redfang Ursa (ELITE, -- Redfang Den Watcher (ELITE,  -- Lupine Delusion
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
7149,  -- Withered Protector (ELITE, -- Bloodfury Ripper
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
*/
