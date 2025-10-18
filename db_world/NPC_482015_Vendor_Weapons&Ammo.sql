-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Weapons
-- -----------------------------------

-- Creature
SET
@Entry      = 482015,
@Model      = 23732,
@Scale      = 1.5,
@Name       = "Spirit of Competition",
@Title      = "Weapons",
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
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1982.39, -419.571, 11.2724, 3.74634, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Ammo
(@Entry,    0,          0,           3030), -- Arrows
(@Entry,    0,          0,           3033), -- Bullets
-- Weapons
(@Entry,    13,         0,           885), -- Black Metal Axe
(@Entry,    17,         0,           911), -- Ironwood Treebranch
(@Entry,    13,         0,           920), -- Wicked Spiked Mace
(@Entry,    17,         0,           1406), -- Pearl-encrusted Spear
(@Entry,    17,         0,           1455), -- Blackrock Champion's Axe
(@Entry,    13,         0,           1459), -- Shadowhide Scalper
(@Entry,    17,         0,           1461), -- Slayer's Battle Axe
(@Entry,    13,         0,           2035), -- Sword of the Night Sky
(@Entry,    13,         0,           2046), -- Bluegill Kukri
(@Entry,    13,         0,           2850), -- Bronze Shortsword
(@Entry,    13,         0,           3490), -- Deadly Bronze Poniard
(@Entry,    13,         0,           3491), -- Heavy Bronze Mace
(@Entry,    13,         0,           3740), -- Decapitating Sword
(@Entry,    26,         0,           4372), -- Lovingly Crafted Boomstick
(@Entry,    26,         0,           3039), -- Short Ash Bow
(@Entry,    17,         0,           4818), -- Executioner's Sword
(@Entry,    13,         0,           6360), -- Steelscale Crushfish
(@Entry,    17,         0,           7956), -- Bronze Warhammer
(@Entry,    13,         0,           15223), -- Jagged Star
(@Entry,    13,         0,           15224), -- Battlesmasher
(@Entry,    13,         0,           15230), -- Ridge Cleaver
(@Entry,    17,         0,           15259), -- Hefty Battlehammer
(@Entry,    17,         0,           15269), -- Massive Battle Axe
(@Entry,    17,         0,           15109), -- Staff of Soran'ruk
(@Entry,    17,         0,           2950), -- Icile Rod
(@Entry,    17,         0,           16889), -- Polished Walking Staff
(@Entry,    17,         0,           5613), -- Staff of the Purifier
-- Shields
(@Entry,    14,         0,           4444), -- Black Husk Shield
(@Entry,    14,         0,           4820), -- Guardian Buckler
(@Entry,    14,         0,           6383), -- Forest Buckler
(@Entry,    14,         0,           9816), -- Fortified Shield
(@Entry,    14,         0,           15894), -- Bristlebark Buckler
-- Offhand
(@Entry,    15,         0,           7558), -- Shimmering Stave
(@Entry,    15,         0,           38579), -- Venomous Tome
(@Entry,    15,         0,           5250), -- Charred Wand
(@Entry,    15,         0,           6677); -- Spellcrafter Wand

-- Buys for 0 / Sells for 1 / BoP / No DE
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1, `item_template`.`bonding`=1, `item_template`.`disenchantID`=0 WHERE `npc_vendor`.`entry` = @Entry;
-- Fix broken DE links
DELETE dlt FROM `disenchant_loot_template` dlt LEFT JOIN `item_template` it ON dlt.`Entry` = it.`disenchantID` WHERE it.`disenchantID` IS NULL;
