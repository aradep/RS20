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

-- Item List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
-- Cloth
(@Entry,    0,          2553,             19972), -- Lucky Fishing Hat
(@Entry,    1,          2553,             1486), -- Tree Bark Jacket
(@Entry,    1,          2553,             5202), -- Corsair's Overshirt
(@Entry,    2,          2553,             12987), -- Darkweave Breeches
(@Entry,    2,          2553,             23173), -- Abomination Skin Leggings
(@Entry,    2,          2553,             42951), -- Mystical Pauldrons of Elements
(@Entry,    3,          2553,             4320), -- Spidersilk Boots
(@Entry,    3,          2553,             48691), -- Tattered Dreadmist Robe
(@Entry,    4,          2553,             1974), -- Mindthrust Bracers
(@Entry,    4,          2553,             44107), -- Exquisite Sunderseer Mantle
(@Entry,    5,          2553,             5195), -- Gold-flecked Gloves
(@Entry,    5,          2553,             5970), -- Serpent Gloves
(@Entry,    5,          2553,             12977), -- Magefist Gloves
(@Entry,    5,          2553,             48683), -- Mystical Vest of Elements
(@Entry,    6,          2553,             12998), -- Magician's Mantle
(@Entry,    6,          2553,             34107), -- Tattered Shoulderpads
(@Entry,    6,          2553,             39894), -- Darkcloth Shoulders
(@Entry,    6,          2553,             42985), -- Tattered Dreadmist Mantle
(@Entry,    7,          2553,             2292), -- Necrology Robes
(@Entry,    7,          2553,             6226), -- Bloody Apron
(@Entry,    7,          2553,             6465), -- Robe of the Moccasin
(@Entry,    8,          2553,             2059), -- Sentry Cloak
(@Entry,    8,          2553,             5193), -- Cape of the Brotherhood
(@Entry,    8,          2553,             6449), -- Glowing Lizardscale Cloak
(@Entry,    8,          2553,             6629), -- Sporid Cape
(@Entry,    8,          2553,             6632), -- Feyscale Cloak
(@Entry,    8,          2553,             12979), -- Firebane Cloak
(@Entry,    8,          2553,             20427), -- Battle Healer's Cloak
(@Entry,    8,          2553,             20428), -- Caretaker's Cape
(@Entry,    8,          2553,             22990), -- Tranquillien Champion's Cloak
(@Entry,    8,          2553,             45626), -- Spidersilk Drape
(@Entry,    8,          2553,             51994), -- Tumultuous Cloak
-- Leather
(@Entry,    1,          2553,             1489), -- Gloomshroud Armor
(@Entry,    1,          2553,             2041), -- Tunic of Westfall
(@Entry,    1,          2553,             2314), -- Toughened Leather Armor
(@Entry,    1,          2553,             6473), -- Armor of the Fang
(@Entry,    1,          2553,             10399), -- Blackened Defias Armor
(@Entry,    1,          2553,             12988), -- Starsight Tunic
(@Entry,    2,          2553,             5199), -- Smelting Pants
(@Entry,    2,          2553,             10410), -- Leggings of the Fang
(@Entry,    2,          2553,             42952), -- Stained Shadowcraft Spaulders
(@Entry,    2,          2553,             42984), -- Preened Ironfeather Shoulders
(@Entry,    3,          2553,             1121), -- Feet of the Lynx
(@Entry,    3,          2553,             7187), -- VanCleef's Boots
(@Entry,    3,          2553,             10411), -- Footpads of the Fang
(@Entry,    3,          2553,             48689), -- Stained Shadowcraft Tunic
(@Entry,    3,          2553,             48687), -- Preened Ironfeather Breastplate
(@Entry,    4,          2553,             12999), -- Drakewing Bands
(@Entry,    4,          2553,             44103), -- Exceptional Stormshroud Shoulders
(@Entry,    4,          2553,             44105), -- Lasting Feralheart Spaulders
(@Entry,    5,          2553,             7348), -- Fletcher's Gloves
(@Entry,    6,          2553,             5404), -- Serpent's Shoulders
(@Entry,    6,          2553,             39895), -- Cloaked Shoulderpads
-- Mail
(@Entry,    2,          2553,             5425), -- Runescale Girdle
(@Entry,    2,          2553,             6460), -- Cobrahn's Grasp
(@Entry,    2,          2553,             51978), -- Earthbound Girdle
(@Entry,    2,          2553,             42950), -- Champion Herod's Shoulder
(@Entry,    2,          2553,             42949), -- Polished Spaulders of Valor
(@Entry,    2,          2553,             48685), -- Polished Breastplate of Valor
(@Entry,    2,          2553,             44099), -- Strengthened Stockade Pauldrons
(@Entry,    2,          2553,             44100), -- Pristine Lightforge Spaulders
(@Entry,    3,          2553,             6087), -- Chausses of Westfall
(@Entry,    3,          2553,             6459), -- Savage Trodders
(@Entry,    3,          2553,             12982), -- Silver-linked Footguards
(@Entry,    4,          2553,             5943), -- Rift Bracers
(@Entry,    4,          2553,             44101), -- Prized Beastmaster's Mantle
(@Entry,    4,          2553,             44102), -- Aged Pauldrons of The Five Thunders
(@Entry,    5,          2553,             12994), -- Thorbia's Gauntlets
(@Entry,    5,          2553,             48677), -- Champion's Deathdealer Breastplate
(@Entry,    6,          2553,             39897), -- Azure Shoulderguards
(@Entry,    6,          2553,             6642), -- Phantom Armor
(@Entry,    6,          2553,             6907), -- Tortoise Armor
-- Jewellery
(@Entry,    9,          2553,             20426), -- Advisor's Ring
(@Entry,    9,          2553,             12996), -- Band of Purification
(@Entry,    9,          2553,             6332), -- Black Pearl Ring
(@Entry,    9,          2553,             30804), -- Bronze Band of Force
(@Entry,    9,          2553,             1156), -- Lavishly Jeweled Ring
(@Entry,    9,          2553,             20429), -- Legionnaire's Band
(@Entry,    9,          2553,             20431), -- Lorekeeper's Ring
(@Entry,    9,          2553,             20439), -- Protector's Band
(@Entry,    9,          2553,             12985), -- Ring of Defense
(@Entry,    9,          2553,             1491), -- Ring of Precision
(@Entry,   10,          2553,             20442), -- Scout's Medallion
(@Entry,   10,          2553,             20444), -- Sentinel's Medallion
(@Entry,   10,          2553,             21568), -- Rune of Duty
(@Entry,   10,          2553,             21566), -- Rune of Perfection
(@Entry,   11,          2553,             42991), -- Swift Hand of Justice
(@Entry,   11,          2553,             42992), -- Discerning Eye of the Beast
(@Entry,   11,          2553,             50255); -- Dread Pirate Ring

-- Refundable
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` SET `item_template`.`flags` = `item_template`.`flags` | 4096 WHERE `npc_vendor`.`entry` = @Entry;
