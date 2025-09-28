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
@Name       = "Spirit of Competition",
@Title      = "Rare Equipment",
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

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1985.21, -425.322, 11.2724, 3.42825, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

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
-- Cloth
(@Entry,    3,          @EmblemofHeroism_x10,          4320), -- Spidersilk Boots
(@Entry,    8,          @EmblemofHeroism_x10,         45626), -- Spidersilk Drape
(@Entry,    6,          @EmblemofHeroism_x10,         12998), -- Magician's Mantle
(@Entry,    1,          @EmblemofHeroism_x10,          1486), -- Tree Bark Jacket
(@Entry,    1,          @EmblemofHeroism_x10,          2911), -- Keller's Girdle
(@Entry,    2,          @EmblemofHeroism_x10,         12987), -- Darkweave Breeches
(@Entry,    5,          @EmblemofHeroism_x10,         12977), -- Magefist Gloves
(@Entry,    8,          @EmblemofHeroism_x10,          2059), -- Sentry Cloak
(@Entry,    4,          @EmblemofHeroism_x10,          1974), -- Mindthrust Bracers
(@Entry,    7,          @EmblemofHeroism_x10,          2292), -- Necrology Robes
(@Entry,    8,          @EmblemofHeroism_x10,         12979), -- Firebane Cloak
-- Leather
(@Entry,    3,          @EmblemofHeroism_x10,          1121), -- Feet of the Lynx
(@Entry,    1,          @EmblemofHeroism_x10,          1489), -- Gloomshroud Armor
(@Entry,    1,          @EmblemofHeroism_x10,          2314), -- Toughened Leather Armor
(@Entry,    1,          @EmblemofHeroism_x10,         12988), -- Starsight Tunic
(@Entry,    4,          @EmblemofHeroism_x10,         12999), -- Drakewing Bands
-- Mail
(@Entry,    3,          @EmblemofHeroism_x10,         12982), -- Silver-linked Footguards
(@Entry,    5,          @EmblemofHeroism_x10,         12994), -- Thorbia's Gauntlets
(@Entry,    6,          @EmblemofHeroism_x10,         39897), -- Azure Shoulderguards
(@Entry,    3,          @EmblemofHeroism_x10,         12978), -- Stormbringer Belt
(@Entry,    3,          @EmblemofHeroism_x10,         5425), -- Runescale Girdle
-- Accessory
(@Entry,    9,          @EmblemofHeroism_x10,         1491), -- Ring of Precision
(@Entry,    9,          @EmblemofHeroism_x10,         6332), -- Black Pearl Ring
(@Entry,    9,          @EmblemofHeroism_x10,         12985), -- Ring of Defense
(@Entry,    9,          @EmblemofHeroism_x10,         12996), -- Band of Purification
(@Entry,    9,          @EmblemofHeroism_x10,         30804), -- Bronze Band of Force
-- Weapons
(@Entry,    1,          @EmblemofHeroism_x10,         1481), -- Grimclaw
(@Entry,    5,          @EmblemofHeroism_x10,         2194), -- Diamond Hammer
(@Entry,   11,          @EmblemofHeroism_x10,         2236), -- Blackfang
(@Entry,   11,          @EmblemofHeroism_x10,         3413), -- Doomspike
(@Entry,    2,          @EmblemofHeroism_x10,         3021), -- Ranger Bow
(@Entry,   10,          @EmblemofHeroism_x10,         890), -- Twisted Chanter's Staff
(@Entry,   10,          @EmblemofHeroism_x10,         3415), -- Staff of the Friar
(@Entry,   10,          @EmblemofHeroism_x10,         2271), -- Staff of the Blessed Seer
(@Entry,   11,          @EmblemofHeroism_x10,         2567), -- Evocator's Blade
(@Entry,    1,          @EmblemofHeroism_x10,         12990), -- Razor's Edge
(@Entry,    9,          @EmblemofHeroism_x10,         12992), -- Searing Blade
(@Entry,    7,          @EmblemofHeroism_x10,         12989), -- Gargoyle's Bite
(@Entry,    6,          @EmblemofHeroism_x10,         12983), -- Rakzur Club
(@Entry,   12,          @EmblemofHeroism_x10,         12984), -- Skycaller
(@Entry,    4,          @EmblemofHeroism_x10,         13136), -- Lil Timmy's Peashooter
(@Entry,    8,          @EmblemofHeroism_x10,         935), -- Night Watch Shortsword
(@Entry,    2,          @EmblemofHeroism_x10,         5423), -- Boahn's Fang
(@Entry,    1,          @EmblemofHeroism_x10,         5426), -- Serpent's Kiss
(@Entry,    2,          @EmblemofHeroism_x10,         12975), -- Prospector Axe
(@Entry,    8,          @EmblemofHeroism_x10,         12976), -- Ironpatch Blade
(@Entry,   13,          @EmblemofHeroism_x10,         2879), -- Antipodean Rod
(@Entry,   13,          @EmblemofHeroism_x10,         5183), -- Pulsating Hydra Heart
-- Shield
(@Entry,   13,          @EmblemofHeroism_x10,         12997), -- Redbeard Crest
-- Offhand
(@Entry,   13,          @EmblemofHeroism_x10,         43654), -- Tome of the Dawn
(@Entry,   13,          @EmblemofHeroism_x10,         43655), -- Book of Survival
(@Entry,   13,          @EmblemofHeroism_x10,         43515); -- Mystic Tome

-- Refundable / BoP
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`bonding`=1, `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
