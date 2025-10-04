-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Call to Arms: Warsong Gulch
-- -----------------------------------

-- PvP Rewards
SET 
@Item   = 43346, -- Spoils of War
@Honor  = 150,
@Arena  = 50,
@Gold   = 250000;

-- PvP Daily Quests
REPLACE INTO `quest_template` VALUES 
(11339, 2, -1, 20, 3358, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 72, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  690, 'Call to Arms: Arathi Basin',  'Win an Arathi Basin battleground match and return to D\'oreh in the Hall of Champions.', 'Your presence is needed on the battlefield to turn the tides of combat. Go to Arathi Basin, claim victory, and return to be rewarded.', 'Victory in Arathi Basin', 'Return to D\'oreh.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11342, 2, -1, 20, 3277, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 72, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  690, 'Call to Arms: Warsong Gulch', 'Win a Warsong Gulch battleground match and return to D\'oreh in the Hall of Champions.', 'Your presence is needed on the battlefield to turn the tides of combat. Go to Warsong Gulch, claim victory, and return to be rewarded.', 'Victory in Warsong Gulch', 'Return to D\'oreh.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11335, 2, -1, 20, 3358, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 76, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 'Call to Arms: Arathi Basin',  'Win an Arathi Basin battleground match and return to D\'oreh in the Hall of Champions.', 'Your presence is needed on the battlefield to turn the tides of combat. Go to Arathi Basin, claim victory, and return to be rewarded.', 'Victory in Arathi Basin', 'Return to D\'oreh.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11338, 2, -1, 20, 3277, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 76, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 'Call to Arms: Warsong Gulch', 'Win a Warsong Gulch battleground match and return to D\'oreh in the Hall of Champions.', 'Your presence is needed on the battlefield to turn the tides of combat. Go to Warsong Gulch, claim victory, and return to be rewarded.', 'Victory in Warsong Gulch', 'Return to D\'oreh.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_offer_reward` VALUES 
(11335, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340),
(11338, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340),
(11339, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340),
(11342, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340);

-- Herod starts Call to Arms quests
REPLACE INTO `creature_queststarter` VALUES
-- Alliance --
(482010, 11335),
(482010, 11338),
-- Horde--
(482010, 11342),
(482010, 11339);

-- Herod ends Call to Arms quests
REPLACE INTO `creature_questender` VALUES
-- Alliance --
(482010, 11335),
(482010, 11338),
-- Horde--
(482010, 11342),
(482010, 11339);

-- Delete exclusive group, both quests can be done
UPDATE `quest_template_addon` SET `exclusivegroup` = 0 WHERE `ID` IN (11339,11342,11335,11338);

-- Remove disable for Call to Arms quests
DELETE FROM `disables` WHERE `comment` LIKE '%Call to Arms:%';

-- Pool Dungeon quests together and only have 2 active per day, same as the PvP quests
REPLACE INTO `pool_template` VALUES (48200, 2, 'Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(48201, 48200, 'Dungeon Daily'),
(48202, 48200, 'Dungeon Daily'),
(48203, 48200, 'Dungeon Daily'),
(48204, 48200, 'Dungeon Daily'),
(48205, 48200, 'Dungeon Daily');