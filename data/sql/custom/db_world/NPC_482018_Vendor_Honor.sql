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
-- Tabards
(@Entry,    0,          @500Honor,        15196), -- Private's Tabard
(@Entry,    0,          @500Honor,        15197), -- Scout's Tabard
-- Battle Standards
(@Entry,    0,          @500Honor,        18606), -- Battle Standard
(@Entry,    0,          @500Honor,        18607), -- Battle Standard
-- Heirloom Trinkets
(@Entry,    1,          @1250Honor,       44098), -- Inherited Insignia of the Alliance
(@Entry,    1,          @1250Honor,       44097), -- Inherited Insignia of the Horde
(@Entry,    1,          @1600Honor,       42991), -- Swift Hand of Justice
(@Entry,    1,          @1600Honor,       42992), -- Discerning Eye of the Beast
(@Entry,    1,          @1600Honor,       50255), -- Dread Pirate Ring
-- Heirloom shoulders
(@Entry,    2,          @2400Honor,       44099), -- Strengthened Stockade Pauldrons
(@Entry,    2,          @2400Honor,       44100), -- Pristine Lightforge Spaulders
(@Entry,    2,          @2400Honor,       44101), -- Prized Beastmaster's Mantle
(@Entry,    2,          @2400Honor,       44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    2,          @2400Honor,       44103), -- Exceptional Stormshroud Shoulders
(@Entry,    2,          @2400Honor,       44105), -- Lasting Feralheart Spaulders
(@Entry,    2,          @2400Honor,       44107), -- Exquisite Sunderseer Mantle
(@Entry,    2,          @2400Honor,       42949), -- Polished Spaulders of Valor
(@Entry,    2,          @2400Honor,       42950), -- Champion Herod's Shoulder
(@Entry,    2,          @2400Honor,       42951), -- Mystical Pauldrons of Elements
(@Entry,    2,          @2400Honor,       42952), -- Stained Shadowcraft Spaulders
(@Entry,    2,          @2400Honor,       42984), -- Preened Ironfeather Shoulders
(@Entry,    2,          @2400Honor,       42985), -- Tattered Dreadmist Mantle
-- Heirloom chest armor
(@Entry,    3,          @3000Honor,       48677), -- Champion's Deathdealer Breastplate
(@Entry,    3,          @3000Honor,       48683), -- Mystical Vest of Elements
(@Entry,    3,          @3000Honor,       48685), -- Polished Breastplate of Valor
(@Entry,    3,          @3000Honor,       48687), -- Preened Ironfeather Breastplate
(@Entry,    3,          @3000Honor,       48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          @3000Honor,       48691), -- Tattered Dreadmist Robe
-- Heirloom Arcanums
(@Entry,    5,          @6000Honor,       44149), -- Arcanum of Torment
(@Entry,    5,          @6000Honor,       44150), -- Arcanum of the Stalwart Protector
(@Entry,    5,          @6000Honor,       44152), -- Arcanum of Blissful Mending
(@Entry,    5,          @6000Honor,       44159), -- Arcanum of Burning Mysteries
(@Entry,    5,          @6000Honor,       44701), -- Arcanum of the Savage Gladiator
(@Entry,    5,          @6000Honor,       44702); -- Arcanum of the Savage Gladiator

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
