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
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Heirloom Vendor",
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
-- Heirloom Inscriptions
(@Entry,    4,          @EmblemofHeroism_x10,       44133), -- Greater Inscription of the Axe
(@Entry,    4,          @EmblemofHeroism_x10,       44134), -- Greater Inscription of the Crag
(@Entry,    4,          @EmblemofHeroism_x10,       44135), -- Greater Inscription of the Storm
(@Entry,    4,          @EmblemofHeroism_x10,       44136), -- Greater Inscription of the Pinnacle
-- Heirlooms weapons
(@Entry,    6,          @EmblemofHeroism_x25,       42943), -- Bloodied Arcanite Reaper
(@Entry,    6,          @EmblemofHeroism_x15,       42944), -- Balanced Heartseeker
(@Entry,    6,          @EmblemofHeroism_x15,       42945), -- Venerable Dal'Rend's Sacred Charge
(@Entry,    6,          @EmblemofHeroism_x25,       42946), -- Charmed Ancient Bone Bow
(@Entry,    6,          @EmblemofHeroism_x25,       42947), -- Dignified Headmaster's Charge
(@Entry,    6,          @EmblemofHeroism_x15,       42948), -- Devout Aurastone Hammer
(@Entry,    6,          @EmblemofHeroism_x15,       44091); -- Sharpened Scarlet Kris
-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
