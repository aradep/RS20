-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Blizzlike item customization
-- -----------------------------------

-- Ammo
UPDATE `item_template` SET `name`='Sharp Arrows', `dmg_min1`=5, `dmg_max1`=7, `buycount` = 1, `stackable` = 1, `maxcount` = 1, `buyprice`=0, `sellprice`=0, `requiredlevel`=0, `itemlevel`=25  WHERE entry IN (3030);
UPDATE `item_template` SET `name`='Heavy Shot', `dmg_min1`=5, `dmg_max1`=7, `buycount` = 1, `stackable` = 1, `maxcount` = 1, `buyprice`=0, `sellprice`=0, `requiredlevel`=0, `itemlevel`=25  WHERE entry IN (3033);

-- Infinite Bandage
UPDATE `item_template` SET `stackable`=1,  name='Endless Runecloth Bandage', `quality`=3, `buycount` = 1, `bonding`=0, `maxcount`=1, `buyprice`=0, `sellprice`=0, `requiredskill`=0, `requiredskillrank`=0, `spellcharges_1`=0 WHERE `entry`=14529;

-- Commendation of Bravery honor token
UPDATE `item_template` SET `maxcount` = 0, `buycount` = 1, `stackable` = 20 WHERE `entry` = 45706;

-- Heirloom Arcanums/Inscriptions
UPDATE `item_template` SET `requiredlevel` = 0, `buyprice` = 0 WHERE `quality` = 7 AND `class` = 12;

-- Lucky Fishing Hat
UPDATE `item_template` SET `RequiredSkill`=0, `RequiredSkillRank`=0 WHERE `entry`=19972;

-- Wymling pet remove rep requirement
UPDATE `item_template` SET `requiredreputationfaction`=0, `requiredreputationrank`=0 WHERE `entry` IN (46820,46821);

-- No durability
UPDATE `item_template` SET `maxdurability`=0 WHERE `maxdurability`>0;

-- Rogue poisons unlimited use
UPDATE `item_template` SET `maxcount`= 1, `spellcharges_1`= 0 WHERE `entry` IN (6947,3775);

-- Reagent prices
UPDATE `item_template` SET `buyprice`=0, `sellprice`=0 WHERE `entry` IN (17057,17058,17056,17034,6947,3775,5060,5175,5176,5177,5178);

-- Remove XP spells from heirlooms
UPDATE `item_template`SET `spellid_1` = 0 WHERE `spellid_1` IN (57353,71354);

-- Engi items no engi req
UPDATE `item_template` SET `requiredskill`=0, `requiredskillrank`=0 WHERE `entry` IN (10586,10646,4395, 10514,40768,49040,41508,44413); 

-- No CD Hearthstone
REPLACE INTO `spell_dbc` VALUES (8690, 1176, 0, 0, 134283264, 1024, 0, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 77, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220, 0, 776, 0, 0, 'Hearthstone', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 'Returns you to $z.  Speak to an Innkeeper in a different place to change your home location.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 0, 133, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0);

-- Remove "Scroll of " from enchant scrolls
UPDATE `item_template` SET `name` = REPLACE(`name`, 'Scroll of ', '') WHERE `name` LIKE 'Scroll of %';

-- Unlimited use Glyphs
UPDATE `item_template` SET `flags`=`flags`|4096, `quality`=1, `spellcharges_1`=0, `stackable`=1, `maxcount`=0, `bonding`=0, `requiredlevel`=0, `buyprice`=0, `sellprice`=0 WHERE `entry` IN (40896,40897,40899,40900,40901,40902,40903,40906,40908,40909,40912,40913,40914,40915,40916,40919,40920,40921,40922,40923,40924,41092,41094,41095,41096,41097,41098,41099,41100,41101,41102,41103,41104,41105,41106,41107,41108,41109,41110,41517,41518,41524,41526,41527,41529,41530,41531,41532,41533,41534,41535,41536,41537,41538,41539,41540,41541,41542,41547,41552,42396,42397,42398,42399,42400,42401,42402,42403,42404,42405,42406,42407,42408,42409,42410,42411,42412,42414,42415,42416,42417,42453,42454,42455,42456,42457,42458,42459,42460,42461,42462,42463,42464,42465,42466,42467,42468,42469,42470,42471,42472,42473,42734,42735,42736,42737,42738,42739,42740,42741,42742,42743,42744,42745,42746,42747,42748,42749,42750,42751,42752,42753,42754,42897,42898,42899,42900,42901,42902,42903,42904,42905,42906,42907,42908,42909,42910,42911,42912,42913,42914,42915,42916,42917,42954,42955,42956,42957,42958,42959,42960,42961,42962,42963,42964,42965,42966,42967,42968,42969,42970,42971,42972,42973,42974,43316,43331,43332,43334,43335,43336,43337,43338,43339,43340,43342,43343,43344,43350,43351,43354,43355,43356,43357,43359,43360,43361,43362,43364,43365,43366,43367,43368,43369,43370,43371,43372,43373,43374,43376,43377,43378,43379,43380,43381,43384,43385,43386,43388,43389,43390,43391,43392,43393,43394,43395,43396,43397,43398,43399,43400,43412,43413,43414,43415,43416,43417,43418,43419,43420,43421,43422,43423,43424,43425,43426,43427,43428,43429,43430,43431,43432,43533,43534,43535,43536,43537,43538,43539,43541,43542,43543,43544,43545,43546,43547,43548,43549,43550,43551,43552,43553,43554,43671,43672,43673,43674,43725,43825,43826,43827,43867,43868,43869,44432,44684,44920,44922,44923,44928,44955,45601,45602,45603,45604,45622,45623,45625,45731,45732,45733,45734,45735,45736,45737,45738,45739,45740,45741,45742,45743,45744,45745,45746,45747,45753,45755,45756,45757,45758,45760,45761,45762,45764,45766,45767,45768,45769,45770,45771,45772,45775,45776,45777,45778,45779,45780,45781,45782,45783,45785,45789,45790,45792,45793,45794,45795,45797,45799,45800,45803,45804,45805,45806,45908,46372,48720,49084,50045,50077,50125);

-- Weapon Chain / Shield spike
UPDATE `item_template` SET `sellprice` = 0 WHERE `entry` IN (6041, 23530);

-- Turn plate items into mail
UPDATE `item_template` SET `subclass`=3 WHERE `class`=4 AND `subclass`=4;

-- Potions
UPDATE `item_template` SET `quality`=1, `stackable`=5, `buyprice`=0, `sellprice`=0, `buycount`=5, `maxcount`=0, `requiredlevel`=0, `requiredskill`=0, `requiredskillrank`=0, `bonding`=0 WHERE `entry` IN (
929,	-- Healing Potion
3827,	-- Mana Potion
7676,   -- Thistle Tea
5631,   -- Rage Potion
2459,   -- Swiftness Potion
5634,   -- Free Action Potion
6048,   -- Shadow Protection Potion
6051,   -- Holy Protection Potion
1450,   -- Potion of Fervor
3384   -- Minor Magic Resistance Potion
);

-- Easy sellback free potions
UPDATE `item_template` SET `sellprice`=1 WHERE `entry` IN (929, 3827, 7676, 5631);

-- Elixirs
UPDATE `item_template` SET `quality`=1, `stackable`=10, `buyprice`=0, `sellprice`=0, `buycount`=3, `maxcount`=0, `requiredlevel`=0, `requiredskill`=0, `requiredskillrank`=0, `bonding`=0 WHERE `entry` IN (
3391, -- Elixir of Ogre's Strength
6373, -- Elixir of Firepower
3390, -- Elixir of Lesser Agility
3389, -- Elixir of Defense
3388, -- Strong Troll's Blood Elixir
45621, -- Elixir of Minor Accuracy
3383, -- Elixir of Wisdom
6662, -- Elixir of Giant Growth
5996, -- Elixir of Water Breathing
3825 -- Elixir of Fortitude
);

-- Disenchanting blues yields 1x Dream Shard
REPLACE INTO `disenchant_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (100, 34052, 0, 100, 0, 1, 1, 2, 3, 'Dream Shard');
UPDATE `item_template` SET `requireddisenchantskill` = 0, `disenchantID` = 100 WHERE `class` IN (2,4) AND `quality`=3 AND `disenchantID` > 0;
DELETE FROM `disenchant_loot_template` dlt WHERE dlt.`Entry` NOT IN (SELECT DISTINCT it.`disenchantID` FROM `item_template` it WHERE it.`disenchantID` IS NOT NULL AND it.`disenchantID` <> 0);
-- Don't allow DEing greens, no point
UPDATE `item_template` SET `requireddisenchantskill` = 0, `disenchantID` = 0 WHERE `class` IN (2,4) AND `quality`=2 AND `disenchantID` > 0;

-- Nerf cool gems so we can use them without being OP
-- Dreadstones / Shadow Crystals
UPDATE `item_template` SET `GemProperties` = 1162 WHERE `entry` = 40129; -- Sovereign Dreadstone
UPDATE `item_template` SET `GemProperties` = 1163 WHERE `entry` = 40130; -- Shifting Dreadstone
UPDATE `item_template` SET `GemProperties` = 1170 WHERE `entry` = 40131; -- Tenuous Dreadstone
UPDATE `item_template` SET `GemProperties` = 1164 WHERE `entry` = 40132; -- Glowing Dreadstone
UPDATE `item_template` SET `GemProperties` = 1169 WHERE `entry` = 40133; -- Purified Dreadstone
UPDATE `item_template` SET `GemProperties` = 1171 WHERE `entry` = 40134; -- Royal Dreadstone
UPDATE `item_template` SET `GemProperties` = 1173 WHERE `entry` = 40135; -- Mysterious Dreadstone
UPDATE `item_template` SET `GemProperties` = 1165 WHERE `entry` = 40136; -- Balanced Dreadstone
UPDATE `item_template` SET `GemProperties` = 1172 WHERE `entry` = 40137; -- Infused Dreadstone
UPDATE `item_template` SET `GemProperties` = 1166 WHERE `entry` = 40138; -- Regal Dreadstone
UPDATE `item_template` SET `GemProperties` = 1167 WHERE `entry` = 40139; -- Defender's Dreadstone
UPDATE `item_template` SET `GemProperties` = 1161 WHERE `entry` = 40140; -- Puissant Dreadstone
UPDATE `item_template` SET `GemProperties` = 1168 WHERE `entry` = 40141; -- Guardian's Dreadstone
-- Eyes of Zul / Dark Jade
UPDATE `item_template` SET `GemProperties` = 1196 WHERE `entry` = 40164; -- Timeless Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1197 WHERE `entry` = 40165; -- Jagged Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1198 WHERE `entry` = 40166; -- Vivid Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1199 WHERE `entry` = 40167; -- Enduring Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1200 WHERE `entry` = 40168; -- Steady Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1201 WHERE `entry` = 40169; -- Forceful Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1202 WHERE `entry` = 40170; -- Seer's Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1203 WHERE `entry` = 40171; -- Misty Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1204 WHERE `entry` = 40172; -- Shining Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1205 WHERE `entry` = 40173; -- Turbid Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1206 WHERE `entry` = 40174; -- Intricate Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1207 WHERE `entry` = 40175; -- Dazzling Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1208 WHERE `entry` = 40176; -- Sundered Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1209 WHERE `entry` = 40177; -- Lambent Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1210 WHERE `entry` = 40178; -- Opaque Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1211 WHERE `entry` = 40179; -- Energized Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1212 WHERE `entry` = 40180; -- Radiant Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1213 WHERE `entry` = 40181; -- Tense Eye of Zul
UPDATE `item_template` SET `GemProperties` = 1214 WHERE `entry` = 40182; -- Shattered Eye of Zul
-- Ametrines / Huge Citrines
UPDATE `item_template` SET `GemProperties` = 1174 WHERE `entry` = 40142; -- Inscribed Ametrine
UPDATE `item_template` SET `GemProperties` = 1175 WHERE `entry` = 40143; -- Etched Ametrine
UPDATE `item_template` SET `GemProperties` = 1177 WHERE `entry` = 40144; -- Champion's Ametrine
UPDATE `item_template` SET `GemProperties` = 1178 WHERE `entry` = 40145; -- Resplendent Ametrine
UPDATE `item_template` SET `GemProperties` = 1179 WHERE `entry` = 40146; -- Fierce Ametrine
UPDATE `item_template` SET `GemProperties` = 1180 WHERE `entry` = 40147; -- Deadly Ametrine
UPDATE `item_template` SET `GemProperties` = 1181 WHERE `entry` = 40148; -- Glinting Ametrine
UPDATE `item_template` SET `GemProperties` = 1182 WHERE `entry` = 40149; -- Lucent Ametrine
UPDATE `item_template` SET `GemProperties` = 1183 WHERE `entry` = 40150; -- Deft Ametrine
UPDATE `item_template` SET `GemProperties` = 1189 WHERE `entry` = 40151; -- Luminous Ametrine
UPDATE `item_template` SET `GemProperties` = 1184 WHERE `entry` = 40152; -- Potent Ametrine
UPDATE `item_template` SET `GemProperties` = 1185 WHERE `entry` = 40153; -- Veiled Ametrine
UPDATE `item_template` SET `GemProperties` = 1186 WHERE `entry` = 40154; -- Durable Ametrine
UPDATE `item_template` SET `GemProperties` = 1187 WHERE `entry` = 40155; -- Reckless Ametrine
UPDATE `item_template` SET `GemProperties` = 1188 WHERE `entry` = 40156; -- Wicked Ametrine
UPDATE `item_template` SET `GemProperties` = 1190 WHERE `entry` = 40157; -- Pristine Ametrine
UPDATE `item_template` SET `GemProperties` = 1191 WHERE `entry` = 40158; -- Empowered Ametrine
UPDATE `item_template` SET `GemProperties` = 1192 WHERE `entry` = 40159; -- Stark Ametrine
UPDATE `item_template` SET `GemProperties` = 1193 WHERE `entry` = 40160; -- Stalwart Ametrine
UPDATE `item_template` SET `GemProperties` = 1194 WHERE `entry` = 40161; -- Glimmering Ametrine
UPDATE `item_template` SET `GemProperties` = 1195 WHERE `entry` = 40162; -- Accurate Ametrine
UPDATE `item_template` SET `GemProperties` = 1195 WHERE `entry` = 40163; -- Resolute Ametrine
