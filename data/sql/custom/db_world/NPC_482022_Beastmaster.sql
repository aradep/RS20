-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Beastmaster auto taming NPC
-- -----------------------------------

-- Creature template
SET
@Entry      := 482022,
@Model      := 22360,
@Name       := "Breanni",
@Title      := "Pet Adoptions",
@Icon       := "Speak",
@GossipMenu := 0,
@MinLevel   := 40,
@MaxLevel   := 40,
@Faction    := 35,
@NPCFlags   := 131,
@Scale      := 1.1,
@Rank       := 0,
@Class      := 1,
@UnitFlags  := 2,
@Type       := 7,
@TypeFlags  := 0,
@FlagsExtra := 2,
@AIName     := "",
@Script     := "BeastMaster";
DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` VALUES (@Entry, 0, @Model, @Scale, 1, 12340);

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1967.83, -422.796, 6.17751, 4.21763, 300, 0, 0, 1524, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Gossip text
DELETE FROM `npc_text` WHERE `ID`=601026;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (601026, 'Greetings $N!$b$bIf you\'re looking for a trustful companion to take into the battlefield, you\'ve come to the right place!');
DELETE FROM `npc_text` WHERE `ID`=601027;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (601027, 'What kind of pet are you looking for?');
DELETE FROM `npc_text` WHERE `ID`=601028;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (601028, 'Sorry, these pets are for Hunters only.');

-- Pet food
UPDATE `item_template` SET `buyprice` = 0, `sellprice` = 0, `buycount` = 200, `stackable` = 200, `spellid_1` = 0, `spellcategory_1` = 0, `spellcategorycooldown_1` = 0, `requiredlevel` = 0, `itemlevel` = 20 WHERE `entry` IN (3770,4605,4544,4602,21552,8932);
UPDATE `item_template` SET `name`='Pet Food',`description`='Meat flavored.' WHERE `entry` = 3770;
UPDATE `item_template` SET `name`='Pet Food',`description`='Fungus flavored.' WHERE `entry` = 4605;
UPDATE `item_template` SET `name`='Pet Food',`description`='Bread flavored.' WHERE `entry` = 4544;
UPDATE `item_template` SET `name`='Pet Food',`description`='Fruit flavored.' WHERE `entry` = 4602;
UPDATE `item_template` SET `name`='Pet Food',`description`='Fish flavored.' WHERE `entry` = 21552;
UPDATE `item_template` SET `name`='Pet Food',`description`='Cheese flavored.' WHERE `entry` = 8932;

-- Pet food vendor
DELETE FROM `npc_vendor` WHERE entry = @Entry;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`) VALUES 
-- Meat
(@Entry,3770, 0),
-- Fungus
(@Entry,4605, 1),
-- Bread
(@Entry,4544, 2),
-- Fruit
(@Entry,4602, 3),
-- Fish
(@Entry,21552, 4),
-- Cheese
(@Entry,8932, 5),
-- Cert. of Ownership
(@Entry,43850, 6);

-- Stable Master
UPDATE `creature_template` SET `faction` = 35 WHERE `entry` = 21518;
DELETE FROM `creature` WHERE `id1` = 21518 AND `comment` LIKE 'CustomNPC';
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(21518, 0, 0, 189, 0, 0, 1, 1, 0, 1973.28, -428.819, 6.17755, 3.34504, 300, 0, 0, 3052, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');
