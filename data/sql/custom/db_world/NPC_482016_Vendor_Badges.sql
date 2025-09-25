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
@Entry      = 482016,
@Model      = 29240,
@Scale      = 0.55,
@HoverHeight= 2.5,
@Name       = "Keeper Sif",
@Title      = "Badge of Justice vendor",
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

-- Emblem of Heroism
SET
@EmblemofHeroism_x10   = 2484,
@EmblemofHeroism_x15   = 2525,
@EmblemofHeroism_x25   = 2523,
@EmblemofHeroism_x30   = 2529,
@EmblemofHeroism_x50   = 2532,
@EmblemofHeroism_x60   = 2526,
@EmblemofHeroism_x65   = 2551,
@EmblemofHeroism_x75   = 2527,
@EmblemofHeroism_x80   = 2533,
@EmblemofHeroism_x100  = 2530,
@EmblemofHeroism_x200  = 2550;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,              `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Heirloom Trinkets
(@Entry,    1,          @EmblemofHeroism_x10,       44098), -- Inherited Insignia of the Alliance
(@Entry,    1,          @EmblemofHeroism_x10,       44097), -- Inherited Insignia of the Horde
(@Entry,    1,          @EmblemofHeroism_x15,       42991), -- Swift Hand of Justice
(@Entry,    1,          @EmblemofHeroism_x15,       42992), -- Discerning Eye of the Beast
(@Entry,    1,          @EmblemofHeroism_x15,       50255), -- Dread Pirate Ring
-- Heirloom shoulders
(@Entry,    2,          @EmblemofHeroism_x25,       44099), -- Strengthened Stockade Pauldrons
(@Entry,    2,          @EmblemofHeroism_x25,       44100), -- Pristine Lightforge Spaulders
(@Entry,    2,          @EmblemofHeroism_x25,       44101), -- Prized Beastmaster's Mantle
(@Entry,    2,          @EmblemofHeroism_x25,       44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    2,          @EmblemofHeroism_x25,       44103), -- Exceptional Stormshroud Shoulders
(@Entry,    2,          @EmblemofHeroism_x25,       44105), -- Lasting Feralheart Spaulders
(@Entry,    2,          @EmblemofHeroism_x25,       44107), -- Exquisite Sunderseer Mantle
(@Entry,    2,          @EmblemofHeroism_x25,       42949), -- Polished Spaulders of Valor
(@Entry,    2,          @EmblemofHeroism_x25,       42950), -- Champion Herod's Shoulder
(@Entry,    2,          @EmblemofHeroism_x25,       42951), -- Mystical Pauldrons of Elements
(@Entry,    2,          @EmblemofHeroism_x25,       42952), -- Stained Shadowcraft Spaulders
(@Entry,    2,          @EmblemofHeroism_x25,       42984), -- Preened Ironfeather Shoulders
(@Entry,    2,          @EmblemofHeroism_x25,       42985), -- Tattered Dreadmist Mantle
-- Heirloom chest armor
(@Entry,    3,          @EmblemofHeroism_x30,       48677), -- Champion's Deathdealer Breastplate
(@Entry,    3,          @EmblemofHeroism_x30,       48683), -- Mystical Vest of Elements
(@Entry,    3,          @EmblemofHeroism_x30,       48685), -- Polished Breastplate of Valor
(@Entry,    3,          @EmblemofHeroism_x30,       48687), -- Preened Ironfeather Breastplate
(@Entry,    3,          @EmblemofHeroism_x30,       48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          @EmblemofHeroism_x30,       48691), -- Tattered Dreadmist Robe
-- Heirloom Inscriptions
(@Entry,    4,          @EmblemofHeroism_x50,       44133), -- Greater Inscription of the Axe
(@Entry,    4,          @EmblemofHeroism_x50,       44134), -- Greater Inscription of the Crag
(@Entry,    4,          @EmblemofHeroism_x50,       44135), -- Greater Inscription of the Storm
(@Entry,    4,          @EmblemofHeroism_x50,       44136), -- Greater Inscription of the Pinnacle;
-- Heirloom Arcanums
(@Entry,    5,          @EmblemofHeroism_x60,       44149), -- Arcanum of Torment
(@Entry,    5,          @EmblemofHeroism_x60,       44150), -- Arcanum of the Stalwart Protector
(@Entry,    5,          @EmblemofHeroism_x60,       44152), -- Arcanum of Blissful Mending
(@Entry,    5,          @EmblemofHeroism_x60,       44159), -- Arcanum of Burning Mysteries
(@Entry,    5,          @EmblemofHeroism_x60,       44701), -- Arcanum of the Savage Gladiator
(@Entry,    5,          @EmblemofHeroism_x60,       44702); -- Arcanum of the Savage Gladiator

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
