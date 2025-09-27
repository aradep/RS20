-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Badge of Justice vendor
-- -----------------------------------

-- Creature
SET
@Entry      = 482016,
@Model      = 23732,
@Scale      = 1.5,
@Name       = "Vendor",
@Title      = "Heirlooms",
@Icon       = "Buy", -- Buy/Repair --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7,
@Class      = 1,
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 20,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

-- Emblem
SET
@EmblemofTriumph_x1    = 2734,
@EmblemofTriumph_x15   = 2723,
@EmblemofTriumph_x22   = 2997,
@EmblemofTriumph_x25   = 2682,
@EmblemofTriumph_x30   = 2687,
@EmblemofTriumph_x35   = 2685,
@EmblemofTriumph_x45   = 2709;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,              `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Heirloom Inscriptions
(@Entry,    4,          @EmblemofTriumph_x15,       44133), -- Greater Inscription of the Axe
(@Entry,    4,          @EmblemofTriumph_x15,       44134), -- Greater Inscription of the Crag
(@Entry,    4,          @EmblemofTriumph_x15,       44135), -- Greater Inscription of the Storm
(@Entry,    4,          @EmblemofTriumph_x15,       44136), -- Greater Inscription of the Pinnacle
-- Heirlooms weapons
(@Entry,    6,          @EmblemofTriumph_x25,       42943), -- Bloodied Arcanite Reaper
(@Entry,    6,          @EmblemofTriumph_x15,       42944), -- Balanced Heartseeker
(@Entry,    6,          @EmblemofTriumph_x15,       42945), -- Venerable Dal'Rend's Sacred Charge
(@Entry,    6,          @EmblemofTriumph_x25,       42946), -- Charmed Ancient Bone Bow
(@Entry,    6,          @EmblemofTriumph_x25,       42947), -- Dignified Headmaster's Charge
(@Entry,    6,          @EmblemofTriumph_x15,       42948), -- Devout Aurastone Hammer
(@Entry,    6,          @EmblemofTriumph_x15,       44091); -- Sharpened Scarlet Kris

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1985.21, -425.322, 11.2724, 3.42825, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');
