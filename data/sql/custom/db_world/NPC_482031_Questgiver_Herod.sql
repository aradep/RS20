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
@Flags      = 131,
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
(@Entry,    11,         @EmblemofHeroism_x20,         42991), -- Swift Hand of Justice
(@Entry,    11,         @EmblemofHeroism_x20,         42992), -- Discerning Eye of the Beast
(@Entry,    11,         @EmblemofHeroism_x20,         50255), -- Dread Pirate Ring
-- Heirloom shoulder
(@Entry,    2,          @EmblemofHeroism_x30,         44099), -- Strengthened Stockade Pauldrons
(@Entry,    4,          @EmblemofHeroism_x30,         44107), -- Exquisite Sunderseer Mantle
(@Entry,    2,          @EmblemofHeroism_x30,         44100), -- Pristine Lightforge Spaulders
(@Entry,    4,          @EmblemofHeroism_x30,         44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    4,          @EmblemofHeroism_x30,         44105), -- Lasting Feralheart Spaulders
(@Entry,    4,          @EmblemofHeroism_x30,         44101), -- Prized Beastmaster's Mantle
-- Heirloom chest
(@Entry,    3,          @EmblemofHeroism_x35,         48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          @EmblemofHeroism_x35,         48687), -- Preened Ironfeather Breastplate
(@Entry,    5,          @EmblemofHeroism_x35,         48677), -- Champion's Deathdealer Breastplate
(@Entry,    2,          @EmblemofHeroism_x35,         48685), -- Polished Breastplate of Valor
(@Entry,    3,          @EmblemofHeroism_x35,         48691), -- Tattered Dreadmist Robe
(@Entry,    5,          @EmblemofHeroism_x35,         48683), -- Mystical Vest of Elements
-- Heirlooms weapons
(@Entry,    14,         @EmblemofHeroism_x50,         42944), -- Balanced Heartseeker
(@Entry,    14,         @EmblemofHeroism_x50,         42948), -- Devout Aurastone Hammer
(@Entry,    14,         @EmblemofHeroism_x50,         44091), -- Sharpened Scarlet Kris
(@Entry,    14,         @EmblemofHeroism_x50,         42945), -- Venerable Dal'Rend's Sacred Charge
(@Entry,    14,         @EmblemofHeroism_x80,         42946), -- Charmed Ancient Bone Bow
(@Entry,    14,         @EmblemofHeroism_x80,         42947), -- Dignified Headmaster's Charge
(@Entry,    14,         @EmblemofHeroism_x80,         42943), -- Bloodied Arcanite Reaper
-- Heirloom Inscriptions
(@Entry,    15,         @EmblemofHeroism_x200,        44133), -- Greater Inscription of the Axe
(@Entry,    15,         @EmblemofHeroism_x200,        44134), -- Greater Inscription of the Crag
(@Entry,    15,         @EmblemofHeroism_x200,        44135), -- Greater Inscription of the Storm
(@Entry,    15,         @EmblemofHeroism_x200,        44136); -- Greater Inscription of the Pinnacle
