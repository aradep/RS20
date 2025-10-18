-- -----------------------------------
-- "Hall of Champions" Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Mount Tweaking
-- -----------------------------------

-- All Races
UPDATE `item_template` SET `maxcount`=0, `allowablerace`=-1, `flagsextra`=0, `itemlevel`=20, `buyprice`=0, `sellprice`=0, `allowableclass`=-1, `item_template`.`quality`=4, `item_template`.`bonding`=1, `item_template`.`requiredlevel`=0, `item_template`.`requiredskillrank`=0, `requiredskill`=0, `item_template`.`flags`=4096
WHERE `entry` IN (
19872, -- Swift Razzashi Raptor --
19902, -- Swift Zulian Tiger --
21176, -- Black Qiraji Resonating Crystal --
30480, -- Fiery Warhorse's Reins --
32768, -- Reins of the Raven Lord --
33184, -- Swift Magic Broom --
33225, -- Reins of the Swift Spectral Tiger --
33809, -- Amani War Bear --
35513, -- Swift White Hawkstrider --
37012, -- The Horseman's Reins --
37719, -- Swift Zhevra --
40777, -- Polar Bear Harness --
43599, -- Big Blizzard Bear --
46778, -- Magic Rooster Egg --
47180, -- Argent Warhorse --
49282, -- Big Battle Bear --
50818, -- Invincible's Reins --
52200, -- Reins of the Crimson Deathcharger --
54811); -- Celestial Steed --

-- Horde-only Mounts
UPDATE `item_template` SET `maxcount`=0, `allowablerace`=-1, `flagsextra`=1, `itemlevel`=20, `buyprice`=0, `sellprice`=0, `allowableclass`=-1, `item_template`.`quality`=4, `item_template`.`bonding`=1, `item_template`.`requiredreputationfaction`=0, `item_template`.`requiredreputationrank`=0, `item_template`.`requiredlevel`=0, `item_template`.`requiredskillrank`=0, `requiredskill`=0, `item_template`.`flags`=4096
WHERE `entry` IN (
18788, -- Swift Blue Raptor --
18789, -- Swift Olive Raptor --
18790, -- Swift Orange Raptor --
18791, -- Purple Skeletal Warhorse --
18793, -- Great White Kodo --
18794, -- Great Brown Kodo --
18795, -- Great Gray Kodo --
18796, -- Horn of the Swift Brown Wolf --
18797, -- Horn of the Swift Timber Wolf --
18798, -- Horn of the Swift Gray Wolf --
28936, -- Swift Pink Hawkstrider --
29223, -- Swift Green Hawkstrider --
29224, -- Swift Purple Hawkstrider --
29466, -- Black War Kodo --
29469, -- Horn of the Black War Wolf --
29472, -- Whistle of the Black War Raptor --
34129, -- Swift Warstrider --
44077, -- Reins of the Black War Mammoth --
44083, -- Reins of the Grand Black War Mammoth --
44086, -- Reins of the Grand Ice Mammoth --
44224, -- Reins of the Black War Bear --
44234, -- Reins of the Travelers Tundra Mammoth --
45592, -- Thunder Bluff Kodo --
45593, -- Darkspear Raptor --
45595, -- Orgrimmar Wolf --
45596, -- Silvermoon Hawkstrider --
45597, -- Forsaken Warhorse --
49098); -- Crusaders Black Warhorse --

-- Alliance-only Mounts
UPDATE `item_template` SET `maxcount`=0, `allowablerace`=-1, `flagsextra`=2, `itemlevel`=20, `buyprice`=0, `sellprice`=0, `allowableclass`=-1, `item_template`.`quality`=4, `item_template`.`bonding`=1, `item_template`.`requiredlevel`=0, `item_template`.`requiredskillrank`=0, `requiredskill`=0, `item_template`.`requiredreputationfaction`=0, `item_template`.`requiredreputationrank`=0, `item_template`.`flags`=4096
WHERE `entry` IN (
18766, -- Reins of the Swift Frostsaber --,
18767, -- Reins of the Swift Mistsaber --,
18772, -- Swift Green Mechanostrider --,
18773, -- Swift White Mechanostrider --,
18774, -- Swift Yellow Mechanostrider --,
18776, -- Swift Palomino --,
18777, -- Swift Brown Steed --,
18778, -- Swift White Steed --,
18785, -- Swift White Ram --,
18786, -- Swift Brown Ram --,
18787, -- Swift Gray Ram --,
18902, -- Reins of the Swift Stormsaber --,
29465, -- Black Battlestrider --,
29467, -- Black War Ram --,
29468, -- Black War Steed Bridle --,
29471, -- Reins of the Black War Tiger --,
35906, -- Reins of the Black War Elekk --,
43956, -- Reins of the Black War Mammoth --,
43959, -- Reins of the Grand Black War Mammoth --,
43961, -- Reins of the Grand Ice Mammoth --,
44223, -- Reins of the Black War Bear --,
44235, -- Reins of the Travelers Tundra Mammoth --,
45125, -- Stormwind Steed --,
45586, -- Ironforge Ram --,
45589, -- Gnomeregan Mechanostrider --,
45590, -- Exodar Elekk --,
45591, -- Darnassian Nightsaber --,
49096); -- Crusaders White Warhorse --);
