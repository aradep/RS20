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
@Title      = "Rare Items",
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
@DreamShard_x4   = 2553,
@DreamShard_x10  = 2554;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,              `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Cloth
(@Entry,    1,          @DreamShard_x4,          4320), -- Spidersilk Boots
(@Entry,    1,          @DreamShard_x4,         45626), -- Spidersilk Drape
(@Entry,    1,          @DreamShard_x4,         12998), -- Magician's Mantle
(@Entry,    1,          @DreamShard_x4,          1486), -- Tree Bark Jacket
(@Entry,    1,          @DreamShard_x4,          2911), -- Keller's Girdle
(@Entry,    1,          @DreamShard_x4,         12987), -- Darkweave Breeches
(@Entry,    1,          @DreamShard_x4,         12977), -- Magefist Gloves
(@Entry,    1,          @DreamShard_x4,          2059), -- Sentry Cloak
(@Entry,    1,          @DreamShard_x4,          1974), -- Mindthrust Bracers
(@Entry,    1,          @DreamShard_x4,          2292), -- Necrology Robes
(@Entry,    1,          @DreamShard_x4,         12979), -- Firebane Cloak
-- Leather
(@Entry,    2,          @DreamShard_x4,          1121), -- Feet of the Lynx
(@Entry,    2,          @DreamShard_x4,          1489), -- Gloomshroud Armor
(@Entry,    2,          @DreamShard_x4,          2314), -- Toughened Leather Armor
(@Entry,    2,          @DreamShard_x4,         12988), -- Starsight Tunic
(@Entry,    2,          @DreamShard_x4,         12999), -- Drakewing Bands
-- Mail
(@Entry,    3,          @DreamShard_x4,         12982), -- Silver-linked Footguards
(@Entry,    3,          @DreamShard_x4,         12994), -- Thorbia's Gauntlets
(@Entry,    3,          @DreamShard_x4,         39897), -- Azure Shoulderguards
(@Entry,    3,          @DreamShard_x4,         12978), -- Stormbringer Belt
(@Entry,    3,          @DreamShard_x4,         5425), -- Runescale Girdle
-- Accessory
(@Entry,    4,          @DreamShard_x4,         6332), -- Black Pearl Ring
(@Entry,    4,          @DreamShard_x4,         12985), -- Ring of Defense
(@Entry,    4,          @DreamShard_x4,         12996), -- Band of Purification
(@Entry,    4,          @DreamShard_x4,         30804), -- Bronze Band of Force
-- Weapons
(@Entry,    5,          @DreamShard_x10,         1481), -- Grimclaw
(@Entry,    5,          @DreamShard_x10,         2194), -- Diamond Hammer
(@Entry,    5,          @DreamShard_x10,         2236), -- Blackfang
(@Entry,    5,          @DreamShard_x10,         3413), -- Doomspike
(@Entry,    5,          @DreamShard_x10,         3021), -- Ranger Bow
(@Entry,    5,          @DreamShard_x10,         890), -- Twisted Chanter's Staff
(@Entry,    5,          @DreamShard_x10,         3415), -- Staff of the Friar
(@Entry,    5,          @DreamShard_x10,         2271), -- Staff of the Blessed Seer
(@Entry,    5,          @DreamShard_x10,         2567), -- Evocator's Blade
(@Entry,    5,          @DreamShard_x10,         12990), -- Razor's Edge
(@Entry,    5,          @DreamShard_x10,         12992), -- Searing Blade
(@Entry,    5,          @DreamShard_x10,         12989), -- Gargoyle's Bite
(@Entry,    5,          @DreamShard_x10,         12983), -- Rakzur Club
(@Entry,    5,          @DreamShard_x10,         12984), -- Skycaller
(@Entry,    5,          @DreamShard_x10,         13136), -- Lil Timmy's Peashooter
(@Entry,    5,          @DreamShard_x10,         935), -- Night Watch Shortsword
(@Entry,    5,          @DreamShard_x10,         5423), -- Boahn's Fang
(@Entry,    5,          @DreamShard_x10,         5426), -- Serpent's Kiss
(@Entry,    5,          @DreamShard_x10,         12975), -- Prospector Axe
(@Entry,    5,          @DreamShard_x10,         12976), -- Ironpatch Blade
(@Entry,    5,          @DreamShard_x10,         2879), -- Antipodean Rod
(@Entry,    5,          @DreamShard_x10,         5183), -- Pulsating Hydra Heart
-- Shield
(@Entry,    6,          @DreamShard_x10,         12997), -- Redbeard Crest
-- Offhand
(@Entry,    7,          @DreamShard_x10,         43654), -- Tome of the Dawn
(@Entry,    7,          @DreamShard_x10,         43655), -- Book of Survival
(@Entry,    7,          @DreamShard_x10,         43515); -- Mystic Tome

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
