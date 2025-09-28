-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
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
(@Entry,       1,      @4xDreamShard,     38851), -- Enchant Gloves - Minor Haste
(@Entry,       1,      @4xDreamShard,     38857), -- Enchant Gloves - Greater Strength
(@Entry,       1,      @4xDreamShard,     38886), -- Enchant Gloves - Shadow Power
(@Entry,       1,      @4xDreamShard,     38887), -- Enchant Gloves - Frost Power
(@Entry,       1,      @4xDreamShard,     38888), -- Enchant Gloves - Fire Power
(@Entry,       1,      @4xDreamShard,     38889), -- Enchant Gloves - Healing Power
(@Entry,       1,      @4xDreamShard,     38890), -- Enchant Gloves - Superior Agility
(@Entry,       2,      @4xDreamShard,     38837), -- Enchant Boots - Minor Speed
(@Entry,       2,      @4xDreamShard,     38862), -- Enchant Boots - Greater Stamina
(@Entry,       2,      @4xDreamShard,     38863), -- Enchant Boots - Greater Agility
(@Entry,       2,      @4xDreamShard,     38864), -- Enchant Boots - Spirit
(@Entry,       8,      @4xDreamShard,     7969), -- Mithril Spurs
(@Entry,       3,      @4xDreamShard,     38798), -- Enchant Chest - Lesser Absorption
(@Entry,       3,      @4xDreamShard,     38799), -- Enchant Chest - Mana
(@Entry,       3,      @4xDreamShard,     38865), -- Enchant Chest - Greater Stats
(@Entry,       3,      @4xDreamShard,     38866), -- Enchant Chest - Major Health
(@Entry,       4,      @4xDreamShard,     23530), -- Felsteel Shield Spike
(@Entry,       4,      @4xDreamShard,     38791), -- Enchant Shield - Lesser Protection
(@Entry,       4,      @4xDreamShard,     38820), -- Enchant Shield - Lesser Block
(@Entry,       4,      @4xDreamShard,     38861), -- Enchant Shield - Greater Stamina
(@Entry,       5,      @4xDreamShard,     38835), -- Enchant Cloak - Lesser Agility
(@Entry,       5,      @4xDreamShard,     38858), -- Enchant Cloak - Greater Resistance
(@Entry,       5,      @4xDreamShard,     38859), -- Enchant Cloak - Superior Defense
(@Entry,       5,      @4xDreamShard,     38895), -- Enchant Cloak - Dodge
(@Entry,       6,      @10xDreamShard,     38838), -- Enchant Weapon - Fiery Weapon
(@Entry,       6,      @10xDreamShard,     38840), -- Enchant Weapon - Demonslaying
(@Entry,       6,      @10xDreamShard,     38868), -- Enchant Weapon - Icy Chill
(@Entry,       6,      @10xDreamShard,     38870), -- Enchant Weapon - Superior Striking
(@Entry,       6,      @10xDreamShard,     38871), -- Enchant Weapon - Lifestealing
(@Entry,       6,      @10xDreamShard,     38872), -- Enchant Weapon - Unholy Weapon
(@Entry,       6,      @10xDreamShard,     38873), -- Enchant Weapon - Crusader
(@Entry,       6,      @10xDreamShard,     38878), -- Enchant Weapon - Healing Power
(@Entry,       6,      @10xDreamShard,     38879), -- Enchant Weapon - Strength
(@Entry,       6,      @10xDreamShard,     38880), -- Enchant Weapon - Agility
(@Entry,       6,      @10xDreamShard,     38883), -- Enchant Weapon - Mighty Spirit
(@Entry,       7,      @10xDreamShard,     38869), -- Enchant 2H Weapon - Superior Impact
(@Entry,       7,      @10xDreamShard,     38874), -- Enchant 2H Weapon - Major Spirit
(@Entry,       7,      @10xDreamShard,     38875), -- Enchant 2H Weapon - Major Intellect
(@Entry,       7,      @10xDreamShard,     38896), -- Enchant 2H Weapon - Agility
(@Entry,       8,      @10xDreamShard,     6041), -- Steel Weapon Chain
(@Entry,       8,      @4xDreamShard,      4407); -- Sniper Scope
