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
@Model      := 25791,
@Name       := "Breanni",
@Title      := "Pet Adoptions",
@Icon       := "Speak",
@GossipMenu := 0,
@MinLevel   := 40,
@MaxLevel   := 40,
@Faction    := 2007,
@NPCFlags   := 131,
@Scale      := 1,
@Rank       := 0,
@Class      := 1,
@UnitFlags  := 2,
@Type       := 7,
@TypeFlags  := 0,
@FlagsExtra := 2,
@AIName     := "SmartAI",
@Script     := "BeastMaster";
DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` VALUES (@Entry, 0, @Model, @Scale, 1, 12340);

-- Gossip text
DELETE FROM `npc_text` WHERE `ID`=601026;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (601026, 'Greetings $N!$b$bIf you\'re looking for a trustful companion to take into the battlefield, you\'ve come to the right place!');
DELETE FROM `npc_text` WHERE `ID`=601027;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (601027, 'What kind of pet are you looking for?');
DELETE FROM `npc_text` WHERE `ID`=601028;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES (601028, 'Sorry, these pets are for Hunters only.');

-- Pet food
UPDATE `item_template` SET `buyprice` = 0, `sellprice` = 0, `buycount` = 200, `stackable` = 200, `spellid_1` = 0, `spellcategory_1` = 0, `spellcategorycooldown_1` = 0, `requiredlevel` = 0, `itemlevel` = 45 WHERE `entry` IN (3770,4605,4544,4602,21552,8932);

-- Pet food vending template
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
