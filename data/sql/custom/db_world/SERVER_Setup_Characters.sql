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

-- Everyone gets Disenchanting
DELETE FROM `playercreateinfo_spell_custom` WHERE `Spell`= 13262;
INSERT INTO `playercreateinfo_spell_custom` (`classmask`, `Spell`, `Note`) VALUES ('0', '13262', 'Disenchant');

-- Account command permissions
UPDATE `command` SET `security`='0' WHERE `name` IN ('character','character customize','character changefaction','character changerace','account','account password','account lock ip');

-- Vanilla title rewards for honorable kills
DELETE FROM `achievement_reward` WHERE `ID` IN (238,513,515,516,512,509,239,869,870);
INSERT INTO `achievement_reward` VALUES 
(238, 1,  15, 0, 0, '', '', 0),
(513, 2,  16, 0, 0, '', '', 0),
(515, 3,  17, 0, 0, '', '', 0),
(516, 6,  20, 0, 0, '', '', 0),
(512, 8,  22, 0, 0, '', '', 0),
(509, 11, 24, 0, 0, '', '', 0),
(239, 12, 26, 0, 0, '', '', 0),
(869, 13, 27, 0, 0, '', '', 0),
(870, 14, 28, 0, 0, '', '', 0);

-- Start with 4x Runecloth Bag
DELETE FROM `playercreateinfo_item` WHERE `itemid`=14046;
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (0, 0, 14046, 4);

-- Start with 1x Endless Runecloth Bandage
DELETE FROM `playercreateinfo_item` WHERE `itemid` IN (14529);
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (0, 0, 14529, 1);

-- Starting Mounts

(@MountVendor,      2,      @EmblemofValor_x15,     /*Stormwind Steed*/45125),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Ironforge Ram*/45586),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Gnomeregan Mechanostrider*/45589),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Exodar Elekk*/45590),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Darnassian Nightsaber*/45591),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Thunder Bluff Kodo*/45592),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Darkspear Raptor*/45593),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Orgrimmar Wolf*/45595),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Silvermoon Hawkstrider*/45596),
(@MountVendor,      2,      @EmblemofValor_x15,     /*Forsaken Warhorse*/45597),


-- Starting Spells
DELETE FROM `playercreateinfo_spell_custom` WHERE `Spell` IN (33391, 201, 202, 198, 199, 196, 197, 200, 674, 227, 264, 5011,266, 2764,2567,1180,3018,15590,71,750,8737,32233,65220,56222,355,7386,2458,20252,10324,5502,8071,3599,5394,697,712,691,1515,883,2641,6991,982,33391,56222,8737,750,48266,48263,34091);
DELETE FROM `playercreateinfo_spell_custom` WHERE `Note` = 'Lvl80';
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
(8, 57968, 'Instant Poison'),
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
