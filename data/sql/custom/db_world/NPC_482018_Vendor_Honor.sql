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
-- Heirloom Trinkets
(@Entry,    2,          @2400Honor,       44098), -- Inherited Insignia of the Alliance
(@Entry,    2,          @2400Honor,       44097), -- Inherited Insignia of the Horde
(@Entry,    3,          @6000Honor,       42991), -- Swift Hand of Justice
(@Entry,    3,          @6000Honor,       42992), -- Discerning Eye of the Beast
(@Entry,    3,          @6000Honor,       50255), -- Dread Pirate Ring
-- Heirloom shoulders
(@Entry,    4,         @10000Honor,       44099), -- Strengthened Stockade Pauldrons
(@Entry,    4,         @10000Honor,       44100), -- Pristine Lightforge Spaulders
(@Entry,    4,         @10000Honor,       44101), -- Prized Beastmaster's Mantle
(@Entry,    4,         @10000Honor,       44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    4,         @10000Honor,       44103), -- Exceptional Stormshroud Shoulders
(@Entry,    4,         @10000Honor,       44105), -- Lasting Feralheart Spaulders
(@Entry,    4,         @10000Honor,       44107), -- Exquisite Sunderseer Mantle
-- Heirloom chest armor
(@Entry,    5,         @15000Honor,       48677), -- Champion's Deathdealer Breastplate
(@Entry,    5,         @15000Honor,       48683), -- Mystical Vest of Elements
(@Entry,    5,         @15000Honor,       48687), -- Preened Ironfeather Breastplate
-- Heirloom Arcanums
(@Entry,    6,         @20000Honor,       44149), -- Arcanum of Torment
(@Entry,    6,         @20000Honor,       44150), -- Arcanum of the Stalwart Protector
(@Entry,    6,         @20000Honor,       44152), -- Arcanum of Blissful Mending
(@Entry,    6,         @20000Honor,       44159), -- Arcanum of Burning Mysteries
(@Entry,    6,         @20000Honor,       44701), -- Arcanum of the Savage Gladiator
(@Entry,    6,         @20000Honor,       44702); -- Arcanum of the Savage Gladiator

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
