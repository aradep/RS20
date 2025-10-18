-- -----------------------------------
-- "Hall of Champions" Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Coliseum - 1v1 Arena battlemaster
-- -----------------------------------

-- Creature
SET
@Entry      = 482021,
@Model      = 29267,
@Name       = "Sara",
@Title      = "1v1 Battlemaster",
@Icon       = "",
@GossipMenu = 0,
@Broadcast  = 0,
@NpcText    = 23000,
@MinLevel   = 20,
@MaxLevel   = 20,
@Faction    = 35,
@NPCFlags   = 1048577,
@Scale      = 0.5,
@Rank       = 0,
@Class      = 1,
@UnitFlags  = 768,
@UnitFlags2 = 2048,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "",
@Script     = "npc_1v1arena";
DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` VALUES (@Entry, 0, @Model, @Scale, 1, 12340);

-- Gossip text
SET @text = 'One-on-one is the purest form of gladiatorial combat. Are you brave enough to enter the arena alone?';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry` = @entry;
DELETE FROM `gossip_menu` WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text` WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text` WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Battlemaster entry
DELETE FROM `battlemaster_entry` WHERE `entry` IN (@Entry);
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES (@Entry, 6);
