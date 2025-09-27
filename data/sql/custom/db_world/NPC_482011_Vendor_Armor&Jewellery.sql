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
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Armor Vendor",
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

SET
@EmblemofTriumph_x1    = 2734;

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Cloth
(@Entry,    0,          @EmblemofTriumph_x1,             19972), -- Lucky Fishing Hat
(@Entry,    1,          @EmblemofTriumph_x1,             1486), -- Tree Bark Jacket
(@Entry,    1,          @EmblemofTriumph_x1,             5202), -- Corsair's Overshirt
(@Entry,    2,          @EmblemofTriumph_x1,             12987), -- Darkweave Breeches
(@Entry,    2,          @EmblemofTriumph_x1,             23173), -- Abomination Skin Leggings
(@Entry,    2,          @EmblemofTriumph_x1,             42951), -- Mystical Pauldrons of Elements
(@Entry,    3,          @EmblemofTriumph_x1,             4320), -- Spidersilk Boots
(@Entry,    3,          @EmblemofTriumph_x1,             48691), -- Tattered Dreadmist Robe
(@Entry,    4,          @EmblemofTriumph_x1,             1974), -- Mindthrust Bracers
(@Entry,    4,          @EmblemofTriumph_x1,             44107), -- Exquisite Sunderseer Mantle
(@Entry,    5,          @EmblemofTriumph_x1,             5195), -- Gold-flecked Gloves
(@Entry,    5,          @EmblemofTriumph_x1,             5970), -- Serpent Gloves
(@Entry,    5,          @EmblemofTriumph_x1,             12977), -- Magefist Gloves
(@Entry,    5,          @EmblemofTriumph_x1,             48683), -- Mystical Vest of Elements
(@Entry,    6,          @EmblemofTriumph_x1,             12998), -- Magician's Mantle
(@Entry,    6,          @EmblemofTriumph_x1,             34107), -- Tattered Shoulderpads
(@Entry,    6,          @EmblemofTriumph_x1,             39894), -- Darkcloth Shoulders
(@Entry,    6,          @EmblemofTriumph_x1,             42985), -- Tattered Dreadmist Mantle
(@Entry,    7,          @EmblemofTriumph_x1,             2292), -- Necrology Robes
(@Entry,    7,          @EmblemofTriumph_x1,             6226), -- Bloody Apron
(@Entry,    7,          @EmblemofTriumph_x1,             6465), -- Robe of the Moccasin
(@Entry,    8,          @EmblemofTriumph_x1,             2059), -- Sentry Cloak
(@Entry,    8,          @EmblemofTriumph_x1,             5193), -- Cape of the Brotherhood
(@Entry,    8,          @EmblemofTriumph_x1,             6449), -- Glowing Lizardscale Cloak
(@Entry,    8,          @EmblemofTriumph_x1,             6629), -- Sporid Cape
(@Entry,    8,          @EmblemofTriumph_x1,             6632), -- Feyscale Cloak
(@Entry,    8,          @EmblemofTriumph_x1,             12979), -- Firebane Cloak
(@Entry,    8,          @EmblemofTriumph_x1,             20427), -- Battle Healer's Cloak
(@Entry,    8,          @EmblemofTriumph_x1,             20428), -- Caretaker's Cape
(@Entry,    8,          @EmblemofTriumph_x1,             22990), -- Tranquillien Champion's Cloak
(@Entry,    8,          @EmblemofTriumph_x1,             45626), -- Spidersilk Drape
(@Entry,    8,          @EmblemofTriumph_x1,             51994), -- Tumultuous Cloak
-- Leather
(@Entry,    1,          @EmblemofTriumph_x1,             1489), -- Gloomshroud Armor
(@Entry,    1,          @EmblemofTriumph_x1,             2041), -- Tunic of Westfall
(@Entry,    1,          @EmblemofTriumph_x1,             2314), -- Toughened Leather Armor
(@Entry,    1,          @EmblemofTriumph_x1,             6473), -- Armor of the Fang
(@Entry,    1,          @EmblemofTriumph_x1,             10399), -- Blackened Defias Armor
(@Entry,    1,          @EmblemofTriumph_x1,             12988), -- Starsight Tunic
(@Entry,    2,          @EmblemofTriumph_x1,             5199), -- Smelting Pants
(@Entry,    2,          @EmblemofTriumph_x1,             10410), -- Leggings of the Fang
(@Entry,    2,          @EmblemofTriumph_x1,             42952), -- Stained Shadowcraft Spaulders
(@Entry,    2,          @EmblemofTriumph_x1,             42984), -- Preened Ironfeather Shoulders
(@Entry,    3,          @EmblemofTriumph_x1,             1121), -- Feet of the Lynx
(@Entry,    3,          @EmblemofTriumph_x1,             7187), -- VanCleef's Boots
(@Entry,    3,          @EmblemofTriumph_x1,             10411), -- Footpads of the Fang
(@Entry,    3,          @EmblemofTriumph_x1,             48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          @EmblemofTriumph_x1,             48687), -- Preened Ironfeather Breastplate
(@Entry,    4,          @EmblemofTriumph_x1,             12999), -- Drakewing Bands
(@Entry,    4,          @EmblemofTriumph_x1,             44103), -- Exceptional Stormshroud Shoulders
(@Entry,    4,          @EmblemofTriumph_x1,             44105), -- Lasting Feralheart Spaulders
(@Entry,    5,          @EmblemofTriumph_x1,             7348), -- Fletcher's Gloves
(@Entry,    6,          @EmblemofTriumph_x1,             5404), -- Serpent's Shoulders
(@Entry,    6,          @EmblemofTriumph_x1,             39895), -- Cloaked Shoulderpads
-- Mail
(@Entry,    2,          @EmblemofTriumph_x1,             5425), -- Runescale Girdle
(@Entry,    2,          @EmblemofTriumph_x1,             6460), -- Cobrahn's Grasp
(@Entry,    2,          @EmblemofTriumph_x1,             51978), -- Earthbound Girdle
(@Entry,    2,          @EmblemofTriumph_x1,             42950), -- Champion Herod's Shoulder
(@Entry,    2,          @EmblemofTriumph_x1,             42949), -- Polished Spaulders of Valor
(@Entry,    2,          @EmblemofTriumph_x1,             48685), -- Polished Breastplate of Valor
(@Entry,    2,          @EmblemofTriumph_x1,             44099), -- Strengthened Stockade Pauldrons
(@Entry,    2,          @EmblemofTriumph_x1,             44100), -- Pristine Lightforge Spaulders
(@Entry,    3,          @EmblemofTriumph_x1,             6087), -- Chausses of Westfall
(@Entry,    3,          @EmblemofTriumph_x1,             6459), -- Savage Trodders
(@Entry,    3,          @EmblemofTriumph_x1,             12982), -- Silver-linked Footguards
(@Entry,    4,          @EmblemofTriumph_x1,             5943), -- Rift Bracers
(@Entry,    4,          @EmblemofTriumph_x1,             44101), -- Prized Beastmaster's Mantle
(@Entry,    4,          @EmblemofTriumph_x1,             44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    5,          @EmblemofTriumph_x1,             12994), -- Thorbia's Gauntlets
(@Entry,    5,          @EmblemofTriumph_x1,             48677), -- Champion's Deathdealer Breastplate
(@Entry,    6,          @EmblemofTriumph_x1,             39897), -- Azure Shoulderguards
(@Entry,    6,          @EmblemofTriumph_x1,             6642), -- Phantom Armor
(@Entry,    6,          @EmblemofTriumph_x1,             6907), -- Tortoise Armor
-- Jewellery
(@Entry,    9,          @EmblemofTriumph_x1,             20426), -- Advisor's Ring
(@Entry,    9,          @EmblemofTriumph_x1,             12996), -- Band of Purification
(@Entry,    9,          @EmblemofTriumph_x1,             6332), -- Black Pearl Ring
(@Entry,    9,          @EmblemofTriumph_x1,             30804), -- Bronze Band of Force
(@Entry,    9,          @EmblemofTriumph_x1,             1156), -- Lavishly Jeweled Ring
(@Entry,    9,          @EmblemofTriumph_x1,             20429), -- Legionnaire's Band
(@Entry,    9,          @EmblemofTriumph_x1,             20431), -- Lorekeeper's Ring
(@Entry,    9,          @EmblemofTriumph_x1,             20439), -- Protector's Band
(@Entry,    9,          @EmblemofTriumph_x1,             12985), -- Ring of Defense
(@Entry,    9,          @EmblemofTriumph_x1,             1491), -- Ring of Precision
(@Entry,   10,          @EmblemofTriumph_x1,             20442), -- Scout's Medallion
(@Entry,   10,          @EmblemofTriumph_x1,             20444), -- Sentinel's Medallion
(@Entry,   10,          @EmblemofTriumph_x1,             21568), -- Rune of Duty
(@Entry,   10,          @EmblemofTriumph_x1,             21566), -- Rune of Perfection
(@Entry,   11,          @EmblemofTriumph_x1,             42991), -- Swift Hand of Justice
(@Entry,   11,          @EmblemofTriumph_x1,             42992), -- Discerning Eye of the Beast
(@Entry,   11,          @EmblemofTriumph_x1,             50255); -- Dread Pirate Ring

-- Edit items
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`requiredlevel`=0, `item_template`.`bonding`=0, `item_template`.`buyprice`=0, `item_template`.`sellprice`=0, `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES (@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1978.1, -414.548, 11.2724, 3.97804, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
