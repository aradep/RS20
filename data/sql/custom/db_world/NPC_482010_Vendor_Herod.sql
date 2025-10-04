-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Herod
-- -----------------------------------

-- Creature
SET
@Entry      = 482010,
@Model      = 18154,
@Scale      = 0.2,
@HoverHeight= 2.5,
@Name       = "D'oreh",
@Title      = "The Custodian",
@Icon       = "Buy",
@Rank       = 1,
@Type       = 7,
@Class      = 1,
@Flags      = 4227,
@Level      = 20,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`, `unit_flags`, `MovementType`, `hoverHeight`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class, 0, 0, @HoverHeight, '');
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Gossip text
SET @text = 'You are welcome in these halls, $N.';
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
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1985.24, -431.722, 11.2722, 3.14431, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Extended costs
SET
@EmblemofHeroism_x10  = 2484,
@EmblemofHeroism_x15  = 2525,
@EmblemofHeroism_x20  = 2706,
@EmblemofHeroism_x25  = 2523,
@EmblemofHeroism_x30  = 2529,
@EmblemofHeroism_x35  = 2531,
@EmblemofHeroism_x40  = 2524,
@EmblemofHeroism_x45  = 2528,
@EmblemofHeroism_x50  = 2532,
@EmblemofHeroism_x60  = 2526,
@EmblemofHeroism_x65  = 2551,
@EmblemofHeroism_x75  = 2527,
@EmblemofHeroism_x80  = 2533,
@EmblemofHeroism_x100 = 2530,
@EmblemofHeroism_x200 = 2550;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,              `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Heirloom trinkets
(@Entry,    1,          @EmblemofHeroism_x10,         42991), -- Swift Hand of Justice
(@Entry,    1,          @EmblemofHeroism_x10,         42992), -- Discerning Eye of the Beast
(@Entry,    1,          @EmblemofHeroism_x10,         50255), -- Dread Pirate Ring
-- Heirloom shoulder
(@Entry,    2,          @EmblemofHeroism_x15,         42952), -- Stained Shadowcraft Spaulders
(@Entry,    2,          @EmblemofHeroism_x15,         42984), -- Preened Ironfeather Shoulders
(@Entry,    2,          @EmblemofHeroism_x15,         42951), -- Mystical Pauldrons of Elements
(@Entry,    2,          @EmblemofHeroism_x15,         42985), -- Tattered Dreadmist Mantle
(@Entry,    2,          @EmblemofHeroism_x15,         42949), -- Polished Spaulders of Valor
(@Entry,    2,          @EmblemofHeroism_x15,         42950), -- Champion Herod's Shoulder
(@Entry,    2,          @EmblemofHeroism_x15,         44103), -- Exceptional Stormshroud Shoulders
-- Heirloom chest
(@Entry,    3,          @EmblemofHeroism_x20,         48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          @EmblemofHeroism_x20,         48687), -- Preened Ironfeather Breastplate
(@Entry,    3,          @EmblemofHeroism_x20,         48677), -- Champion's Deathdealer Breastplate
(@Entry,    3,          @EmblemofHeroism_x20,         48685), -- Polished Breastplate of Valor
(@Entry,    3,          @EmblemofHeroism_x20,         48691), -- Tattered Dreadmist Robe
(@Entry,    3,          @EmblemofHeroism_x20,         48683), -- Mystical Vest of Elements
-- Heirlooms weapons
(@Entry,    4,          @EmblemofHeroism_x25,         42944), -- Balanced Heartseeker
(@Entry,    4,          @EmblemofHeroism_x25,         42948), -- Devout Aurastone Hammer
(@Entry,    4,          @EmblemofHeroism_x25,         44091), -- Sharpened Scarlet Kris
(@Entry,    4,          @EmblemofHeroism_x25,         42945), -- Venerable Dal'Rend's Sacred Charge
(@Entry,    4,          @EmblemofHeroism_x35,         42946), -- Charmed Ancient Bone Bow
(@Entry,    4,          @EmblemofHeroism_x35,         42947), -- Dignified Headmaster's Charge
(@Entry,    4,          @EmblemofHeroism_x35,         42943); -- Bloodied Arcanite Reaper
