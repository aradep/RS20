-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
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
(4, 65220, 'Avoidance'),
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
(256,32233, 'Avoidance'),
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
