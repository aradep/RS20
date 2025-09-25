-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Cloth armor
-- -----------------------------------

-- Creature
SET
@Entry      = 482017,
@Model      = 29240,
@Scale      = 0.5,
@HoverHeight= 1.6,
@Name       = "Keeper Yrsa",
@Title      = "Veteran Outfitter",
@Icon       = "Buy",
@Rank       = 3,
@Type       = 7,
@Class      = 1,
@Flags      = 130,
@Level      = 20,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`, `unit_flags`, `MovementType`, `hoverHeight`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class, 32768, 0, @HoverHeight, 'npc_pet_gen_valkyr_guardian');
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

SET 
@600Arena = 2374,
@1000Arena = 1758,
@3750Arena = 2284,
@400Arena = 2432;
@1500Arena1800Rating = 2383,
@1500Arena2000Rating = 1435,
@1500Arena2200Rating = 2359;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,    `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Heirloom weapons
(@Entry,    1,          @1000Arena         42943), -- Bloodied Arcanite Reaper
(@Entry,    1,          @600Arena          42944), -- Balanced Heartseeker
(@Entry,    1,          @600Arena          42945), -- Venerable Dal'Rend's Sacred Charge
(@Entry,    1,          @1000Arena         42946), -- Charmed Ancient Bone Bow
(@Entry,    1,          @1000Arena         42947), -- Dignified Headmaster's Charge
(@Entry,    1,          @600Arena          42948), -- Devout Aurastone Hammer
(@Entry,    1,          @600Arena          44091), -- Sharpened Scarlet Kris
(@Entry,    1,          @1000Arena         44092), -- Reforged Truesilver Champion
(@Entry,    1,          @1000Arena         44093), -- Upgraded Dwarven Hand Cannon
(@Entry,    1,          @600Arena          44094), -- The Blessed Hammer of Grace
(@Entry,    1,          @1000Arena         44095), -- Grand Staff of Jordan
(@Entry,    1,          @600Arena          44096), -- Battleworn Thrash Blade
(@Entry,    1,          @600Arena          48716), -- Venerable Mass of McGowan
(@Entry,    1,          @600Arena          48718), -- Repurposed Lava Dredger
(@Entry,    2,          @400Arena          45706), -- Commendation of Bravery (2000 Honor)
(@Entry,    3,          @3750Arena         45706), -- Arena Grand Master
(@Entry,    4,       @1500Arena1800Rating,  45983), -- Furious Tabard
(@Entry,    4,       @1500Arena2000Rating,  49086), -- Relentless Tabard
(@Entry,    4,       @1500Arena2200Rating,  51534); -- Wrathful Tabard

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
