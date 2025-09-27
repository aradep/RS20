-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Herod
-- -----------------------------------

-- Creature
SET
@Entry      = 482031,
@Model      = 29537,
@Scale      = 0.5,
@HoverHeight= 2.5,
@Name       = "Herod",
@Title      = "The Custodian",
@Icon       = "Speak",
@Rank       = 3,
@Type       = 7,
@Class      = 1,
@Flags      = 3,
@Level      = 20,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`, `unit_flags`, `MovementType`, `hoverHeight`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class, 32768, 0, @HoverHeight, 'npc_pet_gen_valkyr_guardian');
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Gossip text
SET @text = 'May we all live on in the immortal stone.';
SET @broadcast = (@entry + 100000);
UPDATE `creature_template` SET npcflag = npcflag|1, `gossip_menu_id`=@entry WHERE  `entry`=@entry;
DELETE FROM `gossip_menu` WHERE `menuID` = @entry AND `TextID` = @entry;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (@entry, @entry);
DELETE FROM `npc_text` WHERE `id` = @entry;
INSERT INTO `npc_text` VALUES (@entry, @text, @text, @broadcast, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `broadcast_text` WHERE `id` IN (@broadcast);
INSERT INTO `broadcast_text` VALUES (@broadcast, 0, @text, @text, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1986.17, -431.643, 11.2724, 3.15336, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Ghost visual
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id1` = @Entry);
INSERT INTO `creature_addon` SELECT `guid`, 0, 0, 0, 0, 0, 0, '57932' FROM `creature` WHERE `id1` = @Entry;
