-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Coliseum - Honor vendor
-- -----------------------------------

-- Creature
SET
@Entry      = 482018,
@Model      = 29240,
@Scale      = 0.55,
@HoverHeight= 2.5,
@Name       = "Keeper Sif",
@Title      = "Initiate Outfitter",
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
@500Honor   = 917,
@1250Honor  = 2426,
@1600Honor  = 492,
@2400Honor  = 496,
@3000Honor  = 497,
@5000Honor  = 489,
@6000Honor  = 747,
@8000Honor  = 1442,
@9000Honor  = 748,
@10000Honor = 169,
@15000Honor = 2259,
@20000Honor = 1006,
@40000Honor = 2403;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Battle Standards
(@Entry,    1,          @1250Honor,       18606), -- Battle Standard
(@Entry,    1,          @1250Honor,       18607), -- Battle Standard
-- 2-minute Trinket
(@Entry,    2,          @2400Honor,       42123), -- Medallion the Alliance
(@Entry,    2,          @2400Honor,       42122), -- Medallion the Horde
-- Heirloom shoulder
(@Entry,    3,          @3000Honor,       44099), -- Strengthened Stockade Pauldrons
(@Entry,    3,          @3000Honor,       44107), -- Exquisite Sunderseer Mantle
(@Entry,    3,          @3000Honor,       44100), -- Pristine Lightforge Spaulders
(@Entry,    3,          @3000Honor,       44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    3,          @3000Honor,       44105), -- Lasting Feralheart Spaulders
(@Entry,    3,          @3000Honor,       44101), -- Prized Beastmaster's Mantle
-- Heirloom weapons
(@Entry,    4,          @5000Honor,       44094), -- The Blessed Hammer of Grace
(@Entry,    4,          @5000Honor,       44096), -- Battleworn Thrash Blade
(@Entry,    4,          @5000Honor,       48716), -- Venerable Mass of McGowan
(@Entry,    4,          @5000Honor,       48718), -- Repurposed Lava Dredger
(@Entry,    4,          @8000Honor,       44092), -- Reforged Truesilver Champion
(@Entry,    4,          @8000Honor,       44093), -- Upgraded Dwarven Hand Cannon
(@Entry,    4,          @8000Honor,       44095), -- Grand Staff of Jordan
-- Heirloom Inscriptions
(@Entry,    5,          @20000Honor,      44133), -- Greater Inscription of the Axe
(@Entry,    5,          @20000Honor,      44134), -- Greater Inscription of the Crag
(@Entry,    5,          @20000Honor,      44135), -- Greater Inscription of the Storm
(@Entry,    5,          @20000Honor,      44136); -- Greater Inscription of the Pinnacle

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
