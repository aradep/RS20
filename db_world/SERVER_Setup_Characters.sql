-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Server setup - Character changes
-- -----------------------------------
    
-- Free dual spec
UPDATE `gossip_menu_option` SET `BoxMoney`=0 WHERE `BoxMoney`=10000000;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`='33765', `OptionType`='18', `OptionNpcFlag`='16', `ActionMenuID`='10373', `BoxText`='Are you sure you wish to learn Dual Talent Specialization?' WHERE  `OptionBroadcastTextID`= 33762 ;    

-- Free class training
UPDATE `npc_trainer` SET `MoneyCost` = 0 WHERE `ReqLevel` > 0;

-- Free stable slots
REPLACE INTO `stableslotprices_dbc` (`ID`, `Cost`) VALUES (1,0),(2,0),(3,0),(4,0);

-- Account command permissions
UPDATE `command` SET `security`='0' WHERE `name` IN ('character','character customize','character changefaction','character changerace','account','account password','account lock ip');

-- No mounts in Warsong Gulch
UPDATE `instance_template` SET `allowMount`=0 WHERE `map`=489;

-- Everyone gets Disenchanting
DELETE FROM `playercreateinfo_spell_custom` WHERE `Spell`= 13262;
INSERT INTO `playercreateinfo_spell_custom` (`classmask`, `Spell`, `Note`) VALUES ('0', '13262', 'Disenchant');

-- Start with 4x Runecloth Bag
DELETE FROM `playercreateinfo_item` WHERE `itemid`=14046;
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (0, 0, 14046, 4);

-- Start with 1x Endless Runecloth Bandage
DELETE FROM `playercreateinfo_item` WHERE `itemid` IN (14529);
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (0, 0, 14529, 1);

-- Starting PvP trinkets
DELETE FROM `playercreateinfo_item` WHERE `itemid` IN (44098,44098,44098,44098,44098,44097,44097,44097,44097,44097);
INSERT INTO `playercreateinfo_item` (`race`, `itemid`, `note`) VALUES
(1,  44098, 'Inherited Insignia of the Alliance'),
(3,  44098, 'Inherited Insignia of the Alliance'),
(7,  44098, 'Inherited Insignia of the Alliance'),
(4,  44098, 'Inherited Insignia of the Alliance'),
(11, 44098, 'Inherited Insignia of the Alliance'),
(2,  44097, 'Inherited Insignia of the Horde'),
(8,  44097, 'Inherited Insignia of the Horde'),
(5,  44097, 'Inherited Insignia of the Horde'),
(6,  44097, 'Inherited Insignia of the Horde'),
(10, 44097, 'Inherited Insignia of the Horde');

-- Starting Tabards
DELETE FROM `playercreateinfo_item` WHERE `itemid` IN (15196,15197,45574,45577,45578,45579,45580,45581,45582,45583,45584,45585);
INSERT INTO `playercreateinfo_item` (`race`, `itemid`, `note`) VALUES
(1,  45574, 'Stormwind Tabard'),
(3,  45577, 'Ironforge Tabard'),
(7,  45578, 'Gnomeregan Tabard'),
(4,  45579, 'Darnassus Tabard'),
(11, 45580, 'Exodar Tabard'),
(2,  45581, 'Orgrimmar Tabard'),
(8,  45582, 'Senjin Tabard'),
(5,  45583, 'Undercity Tabard'),
(6,  45584, 'Thunder Bluff Tabard'),
(10, 45585, 'Silvermoon City Tabard');

-- Starting Mounts
DELETE FROM `playercreateinfo_spell_custom` WHERE `Spell` IN (63232,63636,63638,63639,63637,63641,63635,63640,63642,63643);
INSERT INTO `playercreateinfo_spell_custom` (`racemask`, `Spell`, `Note`) VALUES
(1,     63232, 'Stormwind Steed'),
(4,     63636, 'Ironforge Ram'),
(64,    63638, 'Gnomeregan Mechanostrider'),
(1024,  63639, 'Exodar Elekk'),
(8,     63637, 'Darnassian Nightsaber'),
(32,    63641, 'Thunder Bluff Kodo'),
(128,   63635, 'Darkspear Raptor'),
(2,     63640, 'Orgrimmar Wolf'),
(512,   63642, 'Silvermoon Hawkstrider'),
(16,    63643, 'Forsaken Warhorse');

-- Starting Skills
DELETE FROM `playercreateinfo_skills` WHERE `skill` IN (762,293,95, 43, 55, 54, 160,44, 172,229,136,45, 226,46, 176,173,162,228);
INSERT INTO `playercreateinfo_skills` (`racemask`, `classmask`, `skill`, `rank`, `Comment`) VALUES
(0,     0,      762,    2,    'RIDING'),
(0,     35,     293,    0,    'PLATE MAIL'),
(0,     0,      95,     0,    'DEFENSE'),
(0,     431,    43,     0,    'ONE-HANDED SWORDS'),
(0,     39,     55,     0,    'TWO-HANDED SWORDS'),
(0,     1147,   54,     0,    'ONE-HANDED MACES'),
(0,     1123,   160,    0,    'TWO-HANDED MACES'),
(0,     111,    44,     0,    'ONE-HANDED AXES'),
(0,     103,    172,    0,    'TWO-HANDED AXES'),
(0,     1063,   229,    0,    'POLEARMS'),
(0,     1493,   136,    0,    'STAVES'),
(0,     13,     45,     0,    'BOWS'),
(0,     13,     226,    0,    'CROSSBOWS'),
(0,     13,     46,     0,    'GUNS'),
(0,     13,     176,    0,    'THROWING WEAPONS'),
(0,     1501,   173,    0,    'DAGGERS'),
(0,     1501,   162,    0,    'UNARMED'),
(0,     1493,   228,    0,    'WANDS');

-- Starting Spells
DELETE FROM `playercreateinfo_spell_custom` WHERE `Spell` IN (33391, 201, 202, 198, 199, 196, 197, 200, 674, 227, 264, 5011,266, 2764,2567,1180,3018,15590,71,750,8737,32233,65220,56222,355,7386,2458,20252,10324,5502,8071,3599,5394,697,712,691,1515,883,2641,6991,982,33391,56222,8737,750,48266,48263,34091);
REPLACE INTO `playercreateinfo_spell_custom` (`classmask`, `Spell`, `Note`) VALUES
-- Riding
(0, 33391, '150 Riding'),
-- Class Spells
(1,    71, 'Defensive Stance'),
(1,   355, 'Taunt'),
(1,  7386, 'Sunder Armor'),
(2,  5502, 'Sense Undead'),
(4,  1515, 'Tame Beast'),
(4,   883, 'Call Pet'),
(4,  2641, 'Dismiss Pet'),
(4,  6991, 'Feed Pet'),
(4,   982, 'Revive Pet'),
(8, 8679, 'Instant Poison'),
(8, 3408, 'Crippling Poison'),
(32, 56222, 'Dark Command'),
(32,  8737, 'Mail'),
(32,   750, 'Plate Mail'),
(32, 48266, 'Blood Presence'),
(32, 48263, 'Frost Presence'),
(64, 8071, 'Stoneskin Totem'),
(64, 3599, 'Searing Totem'),
(64, 5394, 'Healing Stream Totem'),
(256,  697, 'Summon Voidwalker'),
(256,  712, 'Summon Succubus'),
-- Weapon Spells
(431,   201,   'ONE-HANDED SWORDS'),
(39,    202,   'TWO-HANDED SWORDS'),
(1147,  198,   'ONE-HANDED MACES'),
(1123,  199,   'TWO-HANDED MACES'),
(111,   196,   'ONE-HANDED AXES'),
(103,   197,   'TWO-HANDED AXES'),
(1063,  200,   'POLEARMS'),
(77,    674,   'DUAL WIELD'),
(1493,  227,   'STAVES'),
(13,    264,   'BOWS'),
(13,    5011,  'CROSSBOWS'),
(13,    266,   'GUNS'),
(13,    2764,  'THROW'),
(13,    2567,  'THROWING WEAPONS'),
(1501,  1180,  'DAGGERS'),
(9,     3018,  'SHOOT'),
(1101,  15590, 'FIST WEAPONS');

-- Fix crash when setting MaxLevel=20 because DK doesn't have lvl 20 stats
DELETE FROM `player_class_stats` WHERE `Class` = 6 AND `Level` < 55;
INSERT INTO `player_class_stats` (`Class`, `Level`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`) VALUES
(6, 1, 23, 20, 22, 20, 20),
(6, 2, 24, 21, 23, 20, 20),
(6, 3, 25, 21, 24, 20, 21),
(6, 4, 26, 22, 25, 20, 21),
(6, 5, 28, 23, 26, 20, 21),
(6, 6, 29, 24, 27, 21, 21),
(6, 7, 30, 24, 28, 21, 22),
(6, 8, 31, 25, 29, 21, 22),
(6, 9, 32, 26, 30, 21, 22),
(6, 10, 33, 26, 31, 21, 23),
(6, 11, 35, 27, 33, 21, 23),
(6, 12, 36, 28, 34, 21, 23),
(6, 13, 37, 29, 35, 21, 24),
(6, 14, 39, 30, 36, 22, 24),
(6, 15, 40, 30, 37, 22, 24),
(6, 16, 41, 31, 38, 22, 25),
(6, 17, 42, 32, 40, 22, 25),
(6, 18, 44, 33, 41, 22, 25),
(6, 19, 45, 34, 42, 22, 26),
(6, 20, 47, 35, 43, 22, 26),
(6, 21, 48, 35, 45, 23, 26),
(6, 22, 49, 36, 46, 23, 27),
(6, 23, 51, 37, 47, 23, 27),
(6, 24, 52, 38, 49, 23, 28),
(6, 25, 54, 39, 50, 23, 28),
(6, 26, 55, 40, 51, 23, 28),
(6, 27, 57, 41, 53, 23, 29),
(6, 28, 58, 42, 54, 24, 29),
(6, 29, 60, 43, 56, 24, 30),
(6, 30, 62, 44, 57, 24, 30),
(6, 31, 63, 45, 58, 24, 30),
(6, 32, 65, 46, 60, 24, 31),
(6, 33, 66, 47, 61, 24, 31),
(6, 34, 68, 48, 63, 25, 32),
(6, 35, 70, 49, 64, 25, 32),
(6, 36, 72, 50, 66, 25, 33),
(6, 37, 73, 51, 68, 25, 33),
(6, 38, 75, 52, 69, 25, 33),
(6, 39, 77, 53, 71, 26, 34),
(6, 40, 79, 54, 72, 26, 34),
(6, 41, 80, 56, 74, 26, 35),
(6, 42, 82, 57, 76, 26, 35),
(6, 43, 84, 58, 77, 26, 36),
(6, 44, 86, 59, 79, 26, 36),
(6, 45, 88, 60, 81, 27, 37),
(6, 46, 90, 61, 83, 27, 37),
(6, 47, 92, 63, 84, 27, 38),
(6, 48, 94, 64, 86, 27, 38),
(6, 49, 96, 65, 88, 28, 39),
(6, 50, 98, 66, 90, 28, 39),
(6, 51, 100, 68, 92, 28, 40),
(6, 52, 102, 69, 94, 28, 40),
(6, 53, 104, 70, 96, 28, 41),
(6, 54, 106, 72, 98, 29, 42); 