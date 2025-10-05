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
@Item   = 45986, -- Spoils of War
@Honor  = 0,
@Arena  = 0,
@Gold   = 250000;

-- PvP Daily Quests
REPLACE INTO `quest_template` VALUES 
(11339, 2, -1, 20, 3358, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 72, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  690, 
'Call to Arms: Arathi Basin',  'Win an Arathi Basin battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Arathi Basin, claim victory, and return to be rewarded.', 'Victory in Arathi Basin', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11342, 2, -1, 20, 3277, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 72, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  690, 
'Call to Arms: Warsong Gulch', 'Win a Warsong Gulch battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Warsong Gulch, claim victory, and return to be rewarded.', 'Victory in Warsong Gulch', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11335, 2, -1, 20, 3358, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 76, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 
'Call to Arms: Arathi Basin',  'Win an Arathi Basin battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Arathi Basin, claim victory, and return to be rewarded.', 'Victory in Arathi Basin', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11338, 2, -1, 20, 3277, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 76, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 
'Call to Arms: Warsong Gulch', 'Win a Warsong Gulch battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Warsong Gulch, claim victory, and return to be rewarded.', 'Victory in Warsong Gulch', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
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

-- Remove disable for Call to Arms quests
DELETE FROM `disables` WHERE `comment` LIKE '%Call to Arms:%';

-- Alliance Pool
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(482051, 1, 'Daily PvP Alliance');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(11335, 482051, 'Call to Arms: Arathi Basin (Alliance)'),
(11338, 482051, 'Call to Arms: Warsong Gulch (Alliance)');

-- Horde Pool
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(482052, 1, 'Daily PvP Horde');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(11339, 482052, 'Call to Arms: Arathi Basin (Horde)'),
(11342, 482052, 'Call to Arms: Warsong Gulch (Horde)');
