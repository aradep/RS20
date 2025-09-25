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
@100_Honor   = 838,
@300_Honor   = 887,
@500_Honor   = 917,
@1000_Honor  = 883,
@1600_Honor  = 492,
@2400_Honor  = 496,
@3000_Honor  = 497,
@5000_Honor  = 489,
@6000_Honor  = 747,
@8000_Honor  = 1442,
@9000_Honor  = 748,
@10000_Honor = 169,
@15000_Honor = 2259,
@20000_Honor = 1006,
@40000_Honor = 2403;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Heirloom shoulders
(@Entry,    1,      0, 44099), -- Strengthened Stockade Pauldrons
(@Entry,    1,      0, 44100), -- Pristine Lightforge Spaulders
(@Entry,    1,      0, 44101), -- Prized Beastmaster's Mantle
(@Entry,    1,      0, 44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    1,      0, 44103), -- Exceptional Stormshroud Shoulders
(@Entry,    1,      0, 44105), -- Lasting Feralheart Spaulders
(@Entry,    1,      0, 44107), -- Exquisite Sunderseer Mantle
(@Entry,    1,      0, 42949), -- Polished Spaulders of Valor
(@Entry,    1,      0, 42950), -- Champion Herod's Shoulder
(@Entry,    1,      0, 42951), -- Mystical Pauldrons of Elements
(@Entry,    1,      0, 42952), -- Stained Shadowcraft Spaulders
(@Entry,    1,      0, 42984), -- Preened Ironfeather Shoulders
(@Entry,    1,      0, 42985), -- Tattered Dreadmist Mantle
-- Heirloom chest armor
(@Entry,    2,      0, 48677), -- Champion's Deathdealer Breastplate
(@Entry,    2,      0, 48683), -- Mystical Vest of Elements
(@Entry,    2,      0, 48685), -- Polished Breastplate of Valor
(@Entry,    2,      0, 48687), -- Preened Ironfeather Breastplate
(@Entry,    2,      0, 48689), -- Stained Shadowcraft Tunic
(@Entry,    2,      0, 48691), -- Tattered Dreadmist Robe
-- Heirloom Trinkets
(@Entry,    3,      0, 42991), -- Swift Hand of Justice
(@Entry,    3,      0, 42992), -- Discerning Eye of the Beast
(@Entry,    3,      0, 50255), -- Dread Pirate Ring
(@Entry,    3,      0, 44097), -- Inherited Insignia of the Horde
(@Entry,    3,      0, 44098); -- Inherited Insignia of the Alliance
-- Heirloom enchantments
(@Entry,    4,      0, 44133), -- Greater Inscription of the Axe
(@Entry,    4,      0, 44134), -- Greater Inscription of the Crag
(@Entry,    4,      0, 44135), -- Greater Inscription of the Storm
(@Entry,    4,      0, 44136), -- Greater Inscription of the Pinnacle
(@Entry,    5,      0, 44149), -- Arcanum of Torment
(@Entry,    5,      0, 44150), -- Arcanum of the Stalwart Protector
(@Entry,    5,      0, 44152), -- Arcanum of Blissful Mending
(@Entry,    5,      0, 44159), -- Arcanum of Burning Mysteries
(@Entry,    5,      0, 44701), -- Arcanum of the Savage Gladiator
(@Entry,    5,      0, 44702), -- Arcanum of the Savage Gladiator

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
