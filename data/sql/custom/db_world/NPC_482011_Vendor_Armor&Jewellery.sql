-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Armor and Jewellery
-- -----------------------------------

-- Creature
SET
@Entry      = 482011,
@Model      = 23732,
@Scale      = 1.5,
@Name       = "Spirit of Competition",
@Title      = "Armor",
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
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES (@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1978.1, -414.548, 11.2724, 3.97804, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, 'CustomNPC');

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Cloth
(@Entry,    1,          0,     19972), -- Lucky Fishing Hat
(@Entry,    1,          0,     4315), -- Reinforced Woolen Shoulders
(@Entry,    1,          0,     6567), -- Shimmering Armor
(@Entry,    1,          0,     14133), -- Ritual Tunic
(@Entry,    1,          0,     4708), -- Bright Belt
(@Entry,    1,          0,     4785), -- Brimstone Belt
(@Entry,    1,          0,     14373), -- Sanguine Belt
(@Entry,    1,          0,     4317), -- Phoenix Pants
(@Entry,    1,          0,     6568), -- Shimmering Trousers
(@Entry,    1,          0,     14165), -- Pagan Britches
(@Entry,    1,          0,     2232), -- Dark Runner Boots
(@Entry,    1,          0,     9792), -- Ivycloth Boots
(@Entry,    1,          0,     14374), -- Sanguine Sandals
(@Entry,    1,          0,     9793), -- Ivycloth Bracelets
(@Entry,    1,          0,     14375), -- Sanguine Cuffs
(@Entry,    1,          0,     3066), -- Bright Gloves
(@Entry,    1,          0,     3074), -- Smoldering Gloves
(@Entry,    1,          0,     4331), -- Phoenix Gloves
(@Entry,    1,          0,     9771), -- Greenweave Gloves
(@Entry,    1,          0,     4706), -- Lambent Scale Cloak
(@Entry,    1,          0,     4790), -- Inferno Cloak
(@Entry,    1,          0,     4793), -- Sylvan Cloak
(@Entry,    1,          0,     4797), -- Fiery Cloak
(@Entry,    1,          0,     4798), -- Heavy Runed Cloak
(@Entry,    1,          0,     5751), -- Webwing Cloak
(@Entry,    1,          0,     9794), -- Ivycloth Cloak
(@Entry,    1,          0,     9805), -- Superior Cloak
(@Entry,    1,          0,     14179), -- Watcher's Cape
(@Entry,    1,          0,     15124), -- Robust Cloak
(@Entry,    1,          0,     15526), -- Sentry's Cape
(@Entry,    1,          0,     2034), -- Scholarly Robes
(@Entry,    1,          0,     6569), -- Shimmering Robe
(@Entry,    1,          0,     14127), -- Ritual Shroud
-- Leather
(@Entry,    2,          0,     3057), -- Forest Leather Boots
(@Entry,    2,          0,     3058), -- Forest Leather Gloves
(@Entry,    2,          0,     3202), -- Forest Leather Bracers
(@Entry,    2,          0,     3429), -- Guardsman Belt
(@Entry,    2,          0,     4249), -- Dark Leather Belt
(@Entry,    2,          0,     4250), -- Hillman's Belt
(@Entry,    2,          0,     4709), -- Forest Leather Mantle
(@Entry,    2,          0,     4794), -- Wolf Bracers
(@Entry,    2,          0,     4795), -- Bear Bracers
(@Entry,    2,          0,     4796), -- Owl Bracers
(@Entry,    2,          0,     6584), -- Scouting Tunic
(@Entry,    2,          0,     6587), -- Scouting Trousers
(@Entry,    2,          0,     7284), -- Red Whelp Gloves
(@Entry,    2,          0,     7285), -- Nimble Leather Gloves
(@Entry,    2,          0,     9801), -- Superior Belt
(@Entry,    2,          0,     14566), -- Prospector's Pads
(@Entry,    2,          0,     14572), -- Bristlebark Gloves
(@Entry,    2,          0,     15117), -- Rigid Leggings
(@Entry,    2,          0,     15122), -- Robust Bracers
(@Entry,    2,          0,     15329), -- Wrangler's Belt
(@Entry,    2,          0,     15330), -- Wrangler's Boots
-- Mail
(@Entry,    3,          0,     2868),    -- Patterned Bronze Bracers
(@Entry,    3,          0,     3231),    -- Cutthroat Pauldrons
(@Entry,    3,          0,     3481),    -- Silvered Bronze Shoulders
(@Entry,    3,          0,     4816),    -- Legionnaire's Leggings
(@Entry,    3,          0,     9810),    -- Fortified Boots
(@Entry,    3,          0,     9811),    -- Fortified Bracers
(@Entry,    3,          0,     9813),   -- Fortified Gauntlets
(@Entry,    3,          0,     9814),    -- Fortified Belt
(@Entry,    3,          0,     9815),    -- Fortified Leggings
(@Entry,    3,          0,     9818),    -- Fortified Chain
(@Entry,    3,          0,     14742),   -- Hulking Boots
(@Entry,    3,          0,     14748),   -- Hulking Leggings
(@Entry,    3,          0,     15500),   -- Outrunner's Chestguard
(@Entry,    3,          0,     15511),   -- Grunt's Legguards
(@Entry,    3,          0,     15513),   -- Grunt's Pauldrons
(@Entry,    3,          0,     15515),   -- Spiked Chain Belt
(@Entry,    3,          0,     15517),   -- Spiked Chain Wristbands
-- Accessory
(@Entry,    4,          0,     1076),    -- Defias Renegade Ring
(@Entry,    4,          0,     1462),    -- Ring of the Shadow
(@Entry,    4,          0,     4998),    -- Blood Ring
(@Entry,    4,          0,     6199),    -- Black Widow Band
(@Entry,    4,          0,     7558),    -- Shimmering Stave
(@Entry,    4,          0,     11994),   -- Coral Band
(@Entry,    4,          0,     12007),   -- Prairie Ring
(@Entry,    4,          0,     12054),   -- Demon Band
(@Entry,    4,          0,     15972),   -- Ritual Stein
(@Entry,    4,          0,     20823),   -- Gloom Band
(@Entry,    4,          0,     30419);    -- Brilliant Necklace

-- Buys for 0 / Sells for 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 WHERE `npc_vendor`.`entry` = @Entry;
