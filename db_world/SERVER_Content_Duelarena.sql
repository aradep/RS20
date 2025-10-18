-- -----------------------------------
-- "Hall of Champions" Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Server content - Dueling arena
-- -----------------------------------

-- NPCs
-- -----------------------------------
SET
@ArenaQue1    = 32332,
@ArenaTeam1   = 32329,
@ArenaQue2    = 32330,
@ArenaTeam2   = 29534,
@Dummy        = 31144,
@Spectator1   = 32745,
@Spectator2   = 32425,
@Spectator3   = 32743,
@Spectator4   = 32748,
@Spectator5   = 30104,
@Spectator6   = 32744,
@Spectator7   = 32749,
@ArenaVend    = 482017,
@HonorVend    = 482018,
@OneVsOne1    = 482021,
@OneVsOne2    = 482022,
@Lichking     = 482199, 
@GUID         = 4820001;

-- Lich King
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (@Lichking, 0, 0, 0, 0, 0, 'The Lich King', '', '', 0, 83, 83, 2, 35, 0, 2, 1.71429, 1, 1, 18, 1, 3, 0, 139, 1500, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 6, 268435564, 36597, 0, 0, 0, 0, 1300000, 1500000, '', 0, 1, 1250, 500, 1, 1, 0, 169, 1, 650854271, 0, 0, '', 11159);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Lichking, 0, 0, 1, 0, 0, 0, '73220');
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Lichking;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Lichking, 30721, 1, 1);
DELETE FROM `creature` WHERE `id1` = @Lichking;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES 
(@GUID, @Lichking, 0, 0, 571, 0, 0, 1, 1, 0, 8516.24, 867.364, 583.709, 4.70001, 300, 0, 0, 17431250, 0, 0, 0, 0, 0, '', 'CustomNPC');
-- Sitting
REPLACE INTO `creature_template_addon` VALUES (@Lichking, 0, 0, 1, 0, 0, 0, '73220');

-- Vendor Val'kyrs
DELETE FROM `creature` WHERE `id1` IN (@HonorVend,@ArenaVend) AND `Comment` = 'CustomNPC';
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@HonorVend, 0, 0, 571, 0, 0, 1, 1, 1, 8520.04, 820.728, 562.89, 4.57566, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@ArenaVend, 0, 0, 571, 0, 0, 1, 1, 1, 8510.16, 820.545, 562.89, 4.75237, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 'CustomNPC');

-- Arena Val'kyrs
UPDATE `creature_template` SET `name`='Sigrun', `subname`='Arena Battlemaster', `scale`=0.5, `faction`=35 WHERE `entry`= @ArenaQue2;
UPDATE `creature_template` SET `name`='Hilde', `subname`='Arena Team Organizer', `scale`=0.5,  `gossip_menu_id`=0, `npcflag`=262144, `faction`=35 WHERE `entry`= @ArenaTeam2;
UPDATE `creature_template` SET `name`='Astrid', `subname`='Arena Battlemaster', `scale`=0.5, `faction`=35 WHERE `entry`= @ArenaQue1;
UPDATE `creature_template` SET `name`='Eir', `subname`='Arena Team Organizer', `scale`=0.5, `gossip_menu_id`=0, `npcflag`=262144, `faction`=35 WHERE `entry`= @ArenaTeam1;
UPDATE `creature_template_model` SET `CreaturedisplayID` = 29267, `DisplayScale`= 0.5 WHERE `CreatureID` IN (@ArenaTeam2,@ArenaQue2);
UPDATE `creature_template_model` SET `CreaturedisplayID` = 29267, `DisplayScale`= 0.5 WHERE `CreatureID` IN (@ArenaTeam1,@ArenaQue1);
DELETE FROM `creature` WHERE `id1` IN (@ArenaQue1,@ArenaTeam1,@ArenaQue2,@ArenaTeam2,@OneVsOne1,@OneVsOne2) AND `Comment` = 'CustomNPC';
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@ArenaQue1,  0, 0, 571, 0, 0, 1, 1, 0, 8480.12, 792.419, 559.69, 6.28238,  300, 0, 0, 10635, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@ArenaTeam1, 0, 0, 571, 0, 0, 1, 1, 0, 8482.91, 787.78,  559.69, 0.285871, 300, 0, 0, 10635, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@ArenaQue2,  0, 0, 571, 0, 0, 1, 1, 0, 8550.52, 792.058, 559.69, 3.14473,  300, 0, 0, 10635, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@ArenaTeam2, 0, 0, 571, 0, 0, 1, 1, 0, 8547.77, 796.83,  559.69, 3.33321,  300, 0, 0, 10635, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@OneVsOne1,  0, 0, 571, 0, 0, 1, 1, 0, 8482.95, 797.116, 559.69, 5.95251,  300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@OneVsOne2,  0, 0, 571, 0, 0, 1, 1, 0, 8547.29, 787.237, 559.69, 2.79522,  300, 0, 0,  8982, 0, 0, 0, 0, 0, '', 'CustomNPC');

-- Training Dummies
UPDATE `creature_template` SET `minlevel` = 20, `maxlevel` = 20 WHERE `entry` = @Dummy;
DELETE FROM `creature` WHERE `id1` = @Dummy AND `Comment` = 'CustomNPC';
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@GUID+1, @Dummy, 0, 0, 571, 0, 0, 1, 1, 0, 8537.18, 770.458, 559.691, 2.33182, 300, 0, 0, 352800000, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@GUID+2, @Dummy, 0, 0, 571, 0, 0, 1, 1, 0, 8492.35, 769.339, 559.691, 0.784596, 300, 0, 0, 352800000, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@GUID+3, @Dummy, 0, 0, 571, 0, 0, 1, 1, 0, 8537.42, 814.497, 559.69, 3.93795, 300, 0, 0, 352800000, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@GUID+4, @Dummy, 0, 0, 571, 0, 0, 1, 1, 0, 8493.14, 814.337, 559.69, 5.50089, 300, 0, 0, 352800000, 0, 0, 0, 0, 0, '', 'CustomNPC');

-- Add flag auras
REPLACE INTO `creature_addon` (`guid`, `auras`) VALUES 
(@GUID+1, 32610), /* Horde Dummy */ 
(@GUID+2, 32609), /* Alliance Dummy */
(@GUID+3, 32610), /* Horde Dummy */ 
(@GUID+4, 32609); /* Alliance Dummy */

-- Spectators
DELETE FROM `creature` WHERE `id1` IN (@Spectator1,@Spectator2,@Spectator3,@Spectator4,@Spectator5,@Spectator6,@Spectator7) AND `Comment` = 'CustomNPC';
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@Spectator1, 0, 0, 571, 0, 0, 1, 1, 0, 8555.83, 781.607, 574.617, 2.88161, 300, 0, 0, 5052, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@Spectator2, 0, 0, 571, 0, 0, 1, 1, 0, 8474.87, 803.813, 574.622, 6.05461, 300, 0, 0, 5052, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@Spectator3, 0, 0, 571, 0, 0, 1, 1, 0, 8489.74, 759.134, 574.635, 0.953464, 300, 0, 0, 4652, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@Spectator4, 0, 0, 571, 0, 0, 1, 1, 0, 8552.98, 802.159, 573.656, 3.34501, 300, 0, 0, 5052, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@Spectator5, 0, 0, 571, 0, 0, 1, 1, 0, 8556.08, 783.996, 574.62, 2.93267, 300, 0, 0, 8982, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@Spectator6, 0, 0, 571, 0, 0, 1, 1, 0, 8553.33, 800.124, 573.656, 3.31752, 300, 0, 0, 5052, 0, 0, 0, 0, 0, '', 'CustomNPC'),
(@Spectator7, 0, 0, 571, 0, 0, 1, 1, 0, 8474.22, 801.163, 574.615, 6.03498, 300, 0, 0, 4916, 0, 0, 0, 0, 0, '', 'CustomNPC');

-- Fix no equipment
UPDATE `creature` SET `equipment_id`=0 WHERE NOT EXISTS (SELECT `creatureid` FROM `creature_equip_template` WHERE `creature`.`id1` = `creature_equip_template`.`creatureid`);

-- Stop periodic NPC yells
UPDATE `creature_text` SET `Type`=12 WHERE  `CreatureID`=35501;

-- Valkyr equip weapons
REPLACE INTO `creature_equip_template` VALUES 
(@HonorVend, 1, 50070, 0, 0, 18019), 
(@ArenaVend, 1, 50070, 0, 0, 18019);

-- Valkyr's sheath weapons
REPLACE INTO `creature_template_addon` (`entry`) VALUES (@HonorVend), (@ArenaVend);

-- Arthas Throne
DELETE FROM `gameobject` WHERE `id` = 202161;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(202161, 571, 0, 0, 1, 1, 8515.15, 792.298, 555.44, 1.572, -0, -0, -0.707105, -0.707109, 300, 255, 1, '', 0);

-- Center brazier
DELETE FROM `gameobject` WHERE `id` = 195318;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(195318, 571, 0, 0, 1, 1, 8515.15, 792.087, 559.69, 0.778307, -0, -0, -0.379405, -0.925231, 300, 0, 1, '', 0);
