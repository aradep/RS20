-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Coliseum - Arena point vendor
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

-- Placement handled in SERVER_Setup_Duelarena.sql

-- Extended costs
SET 
@400Arena = 2432,
@600Arena = 2374,
@800Arena = 2423,
@1500Arena = 2288,
@1500Arena1800Rating = 2383,
@1500Arena2000Rating = 1435,
@1500Arena2200Rating = 2359;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,    `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- AGM
(@Entry,    1,          @600Arena,          19024), -- Arena Grand Master
-- 2000 Honor
(@Entry,    2,          @400Arena,          45706), -- Commendation of Bravery
-- Heirloom Arcanums
(@Entry,    3,          @800Arena,         44149), -- Arcanum of Torment
(@Entry,    3,          @800Arena,         44150), -- Arcanum of the Stalwart Protector
(@Entry,    3,          @800Arena,         44152), -- Arcanum of Blissful Mending
(@Entry,    3,          @800Arena,         44159), -- Arcanum of Burning Mysteries
(@Entry,    3,          @800Arena,         44701), -- Arcanum of the Savage Gladiator
(@Entry,    3,          @800Arena,         44702), -- Arcanum of the Savage Gladiator
-- Tabards
(@Entry,    4,          @1500Arena1800Rating,  45983), -- Furious Tabard
(@Entry,    4,          @1500Arena2000Rating,  49086), -- Relentless Tabard
(@Entry,    4,          @1500Arena2200Rating,  51534); -- Wrathful Tabard

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
