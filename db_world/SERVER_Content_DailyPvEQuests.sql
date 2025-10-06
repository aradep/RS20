-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Call to Valor: Dungeon daily
-- -----------------------------------

-- Breadcrumb Quests
REPLACE INTO `quest_template` VALUES 
(51339, 2, -1, 20, 1581, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: The Deadmines',  'Investigate The Deadmines.', 'Your assistance is required in The Deadmines.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Long-Lost John', 'Find Long-Lost John.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51342, 2, -1, 20, 718, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Wailing Caverns', 'Investigate Wailing Caverns.', 'Your assistance is required in Wailing Caverns.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find the Disciple of Naralex', 'Find the Disciple of Naralex.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51335, 2, -1, 20, 209, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Shadowfang Keep',  'Investigate Shadowfang Keep.', 'Your assistance is required in Shadowfang Keep.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Deathstalker Jordan', 'Find Deathstalker Jordan.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51336, 2, -1, 20, 719, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Blackfathom Deeps',  'Investigate Blackfathom Deeps.', 'Your assistance is required in Blackfathom Deeps.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Mergle the Murloc.', 'Find Mergle the Murloc.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51338, 2, -1, 20, 717, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Stormwind Stockade', 'Investigate Stormwind Stockade.', 'Your assistance is required in Stormwind Stockade.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Squeaky Pete.', 'Find Squeaky Pete.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_template_addon` VALUES 
(51339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `quest_offer_reward` VALUES 
(51339, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51342, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51335, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51336, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51338, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340);

-- Herod starts breadcrumb
REPLACE INTO `creature_queststarter` VALUES
(482030, 51339), -- DM breadcrumb
(482030, 51342), -- WC breadcrumb
(482030, 51335), -- SFK breadcrumb
(482030, 51336), -- BFD breadcrumb
(482030, 51338); -- STK breadcrumb

-- Dungeon NPCs end breadcrumb
REPLACE INTO `creature_questender` VALUES
(482035, 51339), -- DM daily
(3678,   51342), -- WC daily
(482036, 51335), -- SFK daily
(482037, 51336), -- BFD daily
(482038, 51338); -- STK daily

-- Pooling
REPLACE INTO `pool_template` VALUES (58200, 0, 'DM Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51339, 58200, 'DM Breadcrumb'),
(48201, 58200, 'DM Daily');
REPLACE INTO `pool_template` VALUES (58201, 0, 'WC Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51342, 58201, 'WC Breadcrumb'),
(48202, 58201, 'WC Daily');
REPLACE INTO `pool_template` VALUES (58202, 0, 'SFK Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51335, 58202, 'SFK Breadcrumb'),
(48203, 58202, 'SFK Daily');
REPLACE INTO `pool_template` VALUES (58203, 0, 'BFD Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51336, 58203, 'BFD Breadcrumb'),
(48204, 58203, 'BFD Daily');
REPLACE INTO `pool_template` VALUES (58204, 0, 'STK Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51338, 58204, 'STK Breadcrumb'),
(48205, 58204, 'STK Daily');

-- Master pool
REPLACE INTO `pool_template` VALUES (58205, 1, 'Dungeon Daily Master Pool');
REPLACE INTO `pool_pool` VALUES
(58200, 58205, 20, 'DM'),
(58201, 58205, 20, 'WC'),
(58202, 58205, 20, 'SFK'),
(58203, 58205, 20, 'BFD'),
(58204, 58205, 20, 'STK');
