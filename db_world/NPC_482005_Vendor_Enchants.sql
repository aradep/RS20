-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Enchants
-- -----------------------------------

-- Creature
SET
@Entry      = 482005,
@Model      = 23732,
@Scale      = 1.5,
@Name       = "Spirit of Competition",
@Title      = "Enchants",
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
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1985.66, -438.038, 11.2727, 2.96487, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Extended costs
SET 
@4xDreamShard  = 2553,
@10xDreamShard = 2554;

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,       1,       0,                38851), -- Enchant Gloves - Minor Haste
(@Entry,       1,       0,                38857), -- Enchant Gloves - Greater Strength
(@Entry,       1,       0,                38886), -- Enchant Gloves - Shadow Power
(@Entry,       1,       0,                38887), -- Enchant Gloves - Frost Power
(@Entry,       1,       0,                38888), -- Enchant Gloves - Fire Power
(@Entry,       1,       0,                38889), -- Enchant Gloves - Healing Power
(@Entry,       1,       0,                38890), -- Enchant Gloves - Superior Agility
(@Entry,       2,       0,                38837), -- Enchant Boots - Minor Speed
(@Entry,       2,       0,                38862), -- Enchant Boots - Greater Stamina
(@Entry,       2,       0,                38863), -- Enchant Boots - Greater Agility
(@Entry,       2,       0,                38864), -- Enchant Boots - Spirit
(@Entry,       3,       0,                38798), -- Enchant Chest - Lesser Absorption
(@Entry,       3,       0,                38799), -- Enchant Chest - Mana
(@Entry,       3,       0,                38865), -- Enchant Chest - Greater Stats
(@Entry,       3,       0,                38866), -- Enchant Chest - Major Health
(@Entry,       4,       0,                38820), -- Enchant Shield - Lesser Block
(@Entry,       4,       0,                38861), -- Enchant Shield - Greater Stamina
(@Entry,       5,       0,                38835), -- Enchant Cloak - Lesser Agility
(@Entry,       5,       0,                38858), -- Enchant Cloak - Greater Resistance
(@Entry,       5,       0,                38859), -- Enchant Cloak - Superior Defense
(@Entry,       6,       0,                38838), -- Enchant Weapon - Fiery Weapon
(@Entry,       6,       0,                38840), -- Enchant Weapon - Demonslaying
(@Entry,       6,       0,                38868), -- Enchant Weapon - Icy Chill
(@Entry,       6,       0,                38870), -- Enchant Weapon - Superior Striking
(@Entry,       6,       0,                38871), -- Enchant Weapon - Lifestealing
(@Entry,       6,       0,                38872), -- Enchant Weapon - Unholy Weapon
(@Entry,       6,       0,                38873), -- Enchant Weapon - Crusader
(@Entry,       6,       0,                38878), -- Enchant Weapon - Healing Power
(@Entry,       6,       0,                38879), -- Enchant Weapon - Strength
(@Entry,       6,       0,                38880), -- Enchant Weapon - Agility
(@Entry,       6,       0,                38883), -- Enchant Weapon - Mighty Spirit
(@Entry,       7,       0,                38869), -- Enchant 2H Weapon - Superior Impact
(@Entry,       7,       0,                38874), -- Enchant 2H Weapon - Major Spirit
(@Entry,       7,       0,                38875), -- Enchant 2H Weapon - Major Intellect
(@Entry,       7,       0,                38896), -- Enchant 2H Weapon - Agility
(@Entry,       8,       0,                7969), -- Mithril Spurs
(@Entry,       8,       0,                23530), -- Felsteel Shield Spike
(@Entry,       8,       0,                6041), -- Steel Weapon Chain
(@Entry,       8,       0,                6043), -- Iron Counterweight
(@Entry,       8,       0,                4407), -- Sniper Scope
(@Entry,      10,       @4xDreamShard,    11645), -- Arcanum
(@Entry,      10,       @4xDreamShard,    11622), -- Arcanum
(@Entry,      10,       @4xDreamShard,    11646), -- Arcanum
(@Entry,      10,       @4xDreamShard,    11647), -- Arcanum
(@Entry,      10,       @4xDreamShard,    11648), -- Arcanum
(@Entry,      10,       @4xDreamShard,    11649), -- Arcanum
(@Entry,      10,       @4xDreamShard,    18329), -- Arcanum
(@Entry,      10,       @4xDreamShard,    18330), -- Arcanum
(@Entry,      10,       @4xDreamShard,    18331), -- Arcanum
(@Entry,      10,       @4xDreamShard,    11643), -- Arcanum
(@Entry,      11,       @10xDreamShard,   28882), -- Inscription
(@Entry,      11,       @10xDreamShard,   28881), -- Inscription
(@Entry,      11,       @10xDreamShard,   28885), -- Inscription
(@Entry,      11,       @10xDreamShard,   28908), -- Inscription
(@Entry,      11,       @10xDreamShard,   28904), -- Inscription
(@Entry,      11,       @10xDreamShard,   28907); -- Inscription

-- Buy for 0, sell for 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 WHERE `npc_vendor`.`entry` = @Entry;
