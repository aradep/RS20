-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Class Trainers
-- -----------------------------------

-- Paladin
SET
@Paladin    = 23128,
@Model      = 16066,
@Name       = "Wing Commander Brighton",
@Title      = "Paladin Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 1.1,
@Rank       = 1,
@Class      = 2,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Paladin;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Paladin, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Paladin;
INSERT INTO `creature_template_model` VALUES (@Paladin, 0, @Model, @Scale, 1, 12340);

-- Warrior
SET
@Warrior    = 3353,
@Model      = 18686,
@Name       = "Warlord Felcarez",
@Title      = "Warrior Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 0.75,
@Rank       = 1,
@Class      = 2,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Warrior;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Warrior, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Warrior;
INSERT INTO `creature_template_model` VALUES (@Warrior, 0, @Model, @Scale, 1, 12340);

-- Hunter
SET
@Hunter     = 3039,
@Model      = 21519,
@Name       = "Santhus the Wanderer",
@Title      = "Hunter Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 0.78,
@Rank       = 1,
@Class      = 2,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Hunter;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Hunter, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Hunter;
INSERT INTO `creature_template_model` VALUES (@Hunter, 0, @Model, @Scale, 1, 12340);

-- Hunter Pet
UPDATE `creature_template` SET `name`='Nova', `subname`='Santhus\'s Companion', `faction` = 35, `unit_class`=8 WHERE `entry`=29994;

-- Shaman
SET
@Shaman     = 3032,
@Model      = 23197,
@Name       = "King Hailex",
@Title      = "Shaman Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 0.82,
@Rank       = 1,
@Class      = 2,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Shaman;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Shaman, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Shaman;
INSERT INTO `creature_template_model` VALUES (@Shaman, 0, @Model, @Scale, 1, 12340);

-- Priest
SET
@Priest     = 376,
@Model      = 24965,
@Name       = "Battle-Priest Pandora",
@Title      = "Priest Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 1.05,
@Rank       = 1,
@Class      = 8,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Priest;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Priest, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Priest;
INSERT INTO `creature_template_model` VALUES (@Priest, 0, @Model, @Scale, 1, 12340);

-- Rogue
SET
@Rogue      = 4584,
@Model      = 21711,
@Name       = "Sapper Morton",
@Title      = "Rogue Trainer",
@Icon       = "",
@GossipMenu = 4562,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 1.0,
@Rank       = 1,
@Class      = 2,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Rogue;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Rogue, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Rogue;
INSERT INTO `creature_template_model` VALUES (@Rogue, 0, @Model, @Scale, 1, 12340);

-- Warlock
SET
@Warlock    = 3326,
@Model      = 20877,
@Name       = "Degenesis",
@Title      = "Warlock Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 1.1,
@Rank       = 1,
@Class      = 8,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Warlock;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Warlock, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Warlock;
INSERT INTO `creature_template_model` VALUES (@Warlock, 0, @Model, @Scale, 1, 12340);

-- Warlock Pet
UPDATE `creature_template` SET `name`='Wild Imp', `faction` = 35, `unit_class`=8 WHERE `entry` = 5730; 

-- Druid
SET
@Druid      = 12042,
@Model      = 17783,
@Name       = "Warden Grylls",
@Title      = "Druid Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 1.0,
@Rank       = 1,
@Class      = 8,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Druid;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Druid, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Druid;
INSERT INTO `creature_template_model` VALUES (@Druid, 0, @Model, @Scale, 1, 12340);

-- Mage
SET
@Mage       = 5146,
@Model      = 24121,
@Name       = "Prototype 18",
@Title      = "Mage Trainer",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 51,
@Scale      = 1.4,
@Rank       = 1,
@Class      = 8,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Mage;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Mage, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Mage;
INSERT INTO `creature_template_model` VALUES (@Mage, 0, @Model, @Scale, 1, 12340);

-- Mage Pet
UPDATE `creature_template` SET `name`='Conjured Arcane Wraith', `subname`='Prototype 18\'s Guardian', `faction` = 35, `unit_class`=8 WHERE  `entry`=18001;
UPDATE `creature_template_model` SET `creaturedisplayid`='15438' WHERE `creatureid`=18001;

SET
@MagePet    = 18001,
@Model      = 15438,
@Name       = "Conjured Arcane Wraith",
@Title      = "Prototype 18's Guardian",
@Icon       = "",
@GossipMenu = 0,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 0,
@Scale      = 1.0,
@Rank       = 1,
@Class      = 8,
@UnitFlags  = 0,
@UnitFlags2 = 0,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @MagePet;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@MagePet, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @MagePet;
INSERT INTO `creature_template_model` VALUES (@MagePet, 0, @Model, @Scale, 1, 12340);

-- Equip weapons
DELETE FROM `creature_equip_template` WHERE `creatureID` IN (@Paladin, @Warrior, @Rogue, @Shaman, @Priest, @DeathKnight, @Warlock, @Mage, @Druid, @Hunter);
REPLACE INTO `creature_equip_template` VALUES
(@Paladin, 1, 28429,     0, 0, 18019),
(@Warrior, 1,  6975,     0, 0, 18019),
(@Hunter,  1, 27987,     0, 0, 18019),
(@Shaman,  1, 32500,     0, 0, 18019),
(@Priest,  1, 32450,     0, 0, 18019),
(@Rogue,   1, 32471, 32471, 0, 18019),
(@Warlock, 1, 32374,     0, 0, 18019),
(@Druid,   1,      0,    0, 0, 18019),
(@Mage,    1,      0,    0, 0, 18019);

-- Sheath weapons
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Paladin, @Warrior, @Rogue, @Shaman, @Priest, @Warlock, @Mage, @Druid, @Hunter);
INSERT INTO `creature_template_addon` (`entry`) VALUES (@Paladin), (@Warrior), (@Rogue), (@Shaman), (@Priest), (@Warlock), (@Mage), (@Druid), (@Hunter);

-- Hunter pet sleeping visual
DELETE FROM `creature_addon`WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id1` = @HunterPet);
INSERT INTO `creature_addon` SELECT `guid`, 0, 0, 3, 0, 0, 0, '55474' FROM `creature` WHERE `id1` = @HunterPet;

-- Class trainer gossip
UPDATE `broadcast_text` SET `maletext`='I need some reagents.', `femaletext`=`maletext` WHERE `id`=17574;
UPDATE `broadcast_text` SET `maletext`='Can''t help ya, $r. I only train rogues.', `femaletext`=`maletext` WHERE `id` = 7482;
UPDATE `npc_text` SET `text0_0` = 'Can''t help ya, $r. I only train rogues.', `text0_1` = 'Can''t help ya, $r. I only train rogues.' WHERE `id` = 4833;
UPDATE `broadcast_text` SET `maletext`='May the spirits be with you, $c.', `femaletext`=`maletext` WHERE `id` = 15446;
UPDATE `npc_text` SET `text0_0` = 'May the spirits be with you, $c.', `text0_1` = 'May the spirits be with you, $c.' WHERE `id` = 5006;
UPDATE `broadcast_text` SET `maletext`='Arcane user detected. Loading training program...$b$bGreetings, $r. What is your request?', `femaletext`=`maletext` WHERE `id` = 2525;
UPDATE `npc_text` SET `text0_0` = 'Arcane user detected. Loading training program...$b$bGreetings, $r. What is your request?', `text0_1` = 'Arcane user detected. Loading training program...$b$bGreetings, $r. What is your request?' WHERE `id` = 560;
UPDATE `broadcast_text` SET `maletext`='ERROR. You do not meet the requirements to access this training program. Please seek help from a...$b$bSCANNING$b$b...$c trainer.', `femaletext`=`maletext` WHERE `id` = 2526;
UPDATE `npc_text` SET `text0_0` = 'ERROR. You do not meet the requirements to access this training program. Please seek help from a...$b$bSCANNING$b$b...$c trainer.' WHERE `id` = 561;
UPDATE `broadcast_text` SET `maletext`='All things are connected, $r. If the beasts were gone from the land, our kind would die from a great loneliness of spirit, for whatever happens to the Azeroth befalls all those who inhabit her.', `femaletext`=`maletext` WHERE `id` = 7555;
UPDATE `npc_text` SET `text0_0` = 'All things are connected, $r. If the beasts were gone from the land, our kind would die from a great loneliness of spirit, for whatever happens to the Azeroth befalls all those who inhabit her.' WHERE `id` = 4889;

-- Make emote talk when interacted with
UPDATE `npc_text` SET `em0_0` = 1, `em0_1` = 1 WHERE `id` IN (@Paladin, @Priest, @Warrior, @Shaman, @Rogue);
UPDATE `broadcast_text` SET `emoteid1`=1 WHERE `id` IN (52388,7155,7631,7482,15446);

-- Disable <Take Letter> for Rogues
UPDATE `conditions` SET `ConditionValue1`='100' WHERE  `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4577 AND `SourceEntry`=4 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=27 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=3 AND `ConditionValue3`=0;
-- Disable Dar'orahil quest for Warlocks
UPDATE `quest_template` SET `minlevel` = 81 WHERE `ID` IN (4969,4968,4967,4965);
