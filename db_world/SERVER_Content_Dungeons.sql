-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Dungeons setup
-- -----------------------------------

-- Move graveyard right outside entrance portals
-- -----------------------------------

-- DM
SET
@DungeonMap = 0,
@DungeonX = -11208.664,
@DungeonY = 1670.9827,
@DungeonZ = 24.7123;
DELETE FROM `game_graveyard` WHERE `ID` IN (4,1462);
INSERT INTO `game_graveyard` (`ID`, `Map`, `x`, `y`, `z`, `Comment`) VALUES
(4, @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard'),
(1462,   @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard');


-- SFK
SET
@DungeonMap = 0,
@DungeonX = -233.309,
@DungeonY = 1566.0505,
@DungeonZ = 76.893;
DELETE FROM `game_graveyard` WHERE `ID` IN (1256,97);
INSERT INTO `game_graveyard` (`ID`, `Map`, `x`, `y`, `z`, `Comment`) VALUES
(1256, @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard'),
(97,   @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard');

-- WC
SET
@DungeonMap = 1,
@DungeonX = -735.4478,
@DungeonY = -2219.849,
@DungeonZ = 17.11;
DELETE FROM `game_graveyard` WHERE `ID` IN (10,1433);
INSERT INTO `game_graveyard` (`ID`, `Map`, `x`, `y`, `z`, `Comment`) VALUES
(10, @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard'),
(1433,   @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard');

-- BFD
SET
@DungeonMap = 1,
@DungeonX = 4247.182,
@DungeonY = 740.927,
@DungeonZ = -25.4065;
DELETE FROM `game_graveyard` WHERE `ID` IN (469,35);
INSERT INTO `game_graveyard` (`ID`, `Map`, `x`, `y`, `z`, `Comment`) VALUES
(469, @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard'),
(35,   @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard');

-- Stockade
SET
@DungeonMap = 0,
@DungeonX = -8787.129,
@DungeonY = 828.421,
@DungeonZ = 97.65;
DELETE FROM `game_graveyard` WHERE `ID` IN (1,106);
INSERT INTO `game_graveyard` (`ID`, `Map`, `x`, `y`, `z`, `Comment`) VALUES
(1, @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard'),
(106,   @DungeonMap, @DungeonX, @DungeonY, @DungeonZ, 'Custom Graveyard');

-- Loot changes
-- -----------------------------------

-- Add 1x Darkmoon Card to end bosses
DELETE FROM `creature_loot_template` WHERE `comment` LIKE '% - Darkmoon Card';
REPLACE INTO `creature_loot_template` VALUES
(639, 48207, 48207, 100, 0, 1, 9, 1, 1, 'Edwin VanCleef - Darkmoon Card'),
(1716, 48207, 48207, 100, 0, 1, 9, 1, 1, 'Bazil Thredd - Darkmoon Card'),
(3654, 48207, 48207, 100, 0, 1, 9, 1, 1, 'Mutanus the Devourer - Darkmoon Card'),
(4275, 48207, 48207, 100, 0, 1, 9, 1, 1, 'Archmage Arugal - Darkmoon Card'),
(4829, 48207, 48207, 100, 0, 1, 9, 1, 1, 'Akumai - Darkmoon Card');

-- Add 1x Emblem of Heroism to all bosses (2x to end bosses)
DELETE FROM `creature_loot_template` WHERE `comment` LIKE '% - Emblem of Heroism';
REPLACE INTO `creature_loot_template` VALUES
(639, 40752, 0, 100, 0, 1, 0, 2, 2, 'Edwin VanCleef - Emblem of Heroism'),
(3654, 40752, 0, 100, 0, 1, 0, 2, 2, 'Mutanus the Devourer - Emblem of Heroism'),
(1716, 40752, 0, 100, 0, 1, 0, 2, 2, 'Bazil Thredd - Emblem of Heroism'),
(4829, 40752, 0, 100, 0, 1, 0, 2, 2, 'Akumai - Emblem of Heroism'),
(4275, 40752, 0, 100, 0, 1, 0, 2, 2, 'Archmage Arugal - Emblem of Heroism'),
(644, 40752, 0, 100, 0, 1, 0, 1, 1, 'RhahkZor - Emblem of Heroism'),
(645, 40752, 0, 100, 0, 1, 0, 1, 1, 'Cookie - Emblem of Heroism'),
(646, 40752, 0, 100, 0, 1, 0, 1, 1, 'Mr. Smite - Emblem of Heroism'),
(647, 40752, 0, 100, 0, 1, 0, 1, 1, 'Captain Greenskin - Emblem of Heroism'),
(1663, 40752, 0, 100, 0, 1, 0, 1, 1, 'Dextren Ward - Emblem of Heroism'),
(1666, 40752, 0, 100, 0, 1, 0, 1, 1, 'Kam Deepfury - Emblem of Heroism'),
(1696, 40752, 0, 100, 0, 1, 0, 1, 1, 'Targorr the Dread - Emblem of Heroism'),
(1717, 40752, 0, 100, 0, 1, 0, 1, 1, 'Hamhock - Emblem of Heroism'),
(1763, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gilnid - Emblem of Heroism'),
(3653, 40752, 0, 100, 0, 1, 0, 1, 1, 'Kresh - Emblem of Heroism'),
(3669, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lord Cobrahn - Emblem of Heroism'),
(3670, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lord Pythas - Emblem of Heroism'),
(3671, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lady Anacondra - Emblem of Heroism'),
(3673, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lord Serpentis - Emblem of Heroism'),
(3674, 40752, 0, 100, 0, 1, 0, 1, 1, 'Skum - Emblem of Heroism'),
(3886, 40752, 0, 100, 0, 1, 0, 1, 1, 'Razorclaw the Butcher - Emblem of Heroism'),
(3887, 40752, 0, 100, 0, 1, 0, 1, 1, 'Baron Silverlaine - Emblem of Heroism'),
(3914, 40752, 0, 100, 0, 1, 0, 1, 1, 'Rethilgore - Emblem of Heroism'),
(3927, 40752, 0, 100, 0, 1, 0, 1, 1, 'Wolf Master Nandos - Emblem of Heroism'),
(4274, 40752, 0, 100, 0, 1, 0, 1, 1, 'Fenrus the Devourer - Emblem of Heroism'),
(4278, 40752, 0, 100, 0, 1, 0, 1, 1, 'Commander Springvale - Emblem of Heroism'),
(4279, 40752, 0, 100, 0, 1, 0, 1, 1, 'Odo the Blindwatcher - Emblem of Heroism'),
(4830, 40752, 0, 100, 0, 1, 0, 1, 1, 'Old Serrakis - Emblem of Heroism'),
(4831, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lady Sarevess - Emblem of Heroism'),
(4832, 40752, 0, 100, 0, 1, 0, 1, 1, 'Twilight Lord Kelris - Emblem of Heroism'),
(4887, 40752, 0, 100, 0, 1, 0, 1, 1, 'Ghamoo-ra - Emblem of Heroism'),
(5775, 40752, 0, 100, 0, 1, 0, 1, 1, 'Verdan the Everliving - Emblem of Heroism'),
(6243, 40752, 0, 100, 0, 1, 0, 1, 1, 'Gelihast - Emblem of Heroism'),
(12902, 40752, 0, 100, 0, 1, 0, 1, 1, 'Lorgus Jett - Emblem of Heroism');

-- Add 1x Frozen Orb to all bosses
DELETE FROM `creature_loot_template` WHERE `comment` LIKE '% - Frozen Orb';
REPLACE INTO `creature_loot_template` VALUES
(639, 43102, 0, 100, 0, 1, 0, 1, 1, 'Edwin VanCleef - Frozen Orb'),
(644, 43102, 0, 100, 0, 1, 0, 1, 1, 'RhahkZor - Frozen Orb'),
(645, 43102, 0, 100, 0, 1, 0, 1, 1, 'Cookie - Frozen Orb'),
(646, 43102, 0, 100, 0, 1, 0, 1, 1, 'Mr. Smite - Frozen Orb'),
(647, 43102, 0, 100, 0, 1, 0, 1, 1, 'Captain Greenskin - Frozen Orb'),
(1663, 43102, 0, 100, 0, 1, 0, 1, 1, 'Dextren Ward - Frozen Orb'),
(1666, 43102, 0, 100, 0, 1, 0, 1, 1, 'Kam Deepfury - Frozen Orb'),
(1696, 43102, 0, 100, 0, 1, 0, 1, 1, 'Targorr the Dread - Frozen Orb'),
(1716, 43102, 0, 100, 0, 1, 0, 1, 1, 'Bazil Thredd - Frozen Orb'),
(1717, 43102, 0, 100, 0, 1, 0, 1, 1, 'Hamhock - Frozen Orb'),
(1763, 43102, 0, 100, 0, 1, 0, 1, 1, 'Gilnid - Frozen Orb'),
(3653, 43102, 0, 100, 0, 1, 0, 1, 1, 'Kresh - Frozen Orb'),
(3654, 43102, 0, 100, 0, 1, 0, 1, 1, 'Mutanus the Devourer - Frozen Orb'),
(3669, 43102, 0, 100, 0, 1, 0, 1, 1, 'Lord Cobrahn - Frozen Orb'),
(3670, 43102, 0, 100, 0, 1, 0, 1, 1, 'Lord Pythas - Frozen Orb'),
(3671, 43102, 0, 100, 0, 1, 0, 1, 1, 'Lady Anacondra - Frozen Orb'),
(3673, 43102, 0, 100, 0, 1, 0, 1, 1, 'Lord Serpentis - Frozen Orb'),
(3674, 43102, 0, 100, 0, 1, 0, 1, 1, 'Skum - Frozen Orb'),
(3886, 43102, 0, 100, 0, 1, 0, 1, 1, 'Razorclaw the Butcher - Frozen Orb'),
(3887, 43102, 0, 100, 0, 1, 0, 1, 1, 'Baron Silverlaine - Frozen Orb'),
(3914, 43102, 0, 100, 0, 1, 0, 1, 1, 'Rethilgore - Frozen Orb'),
(3927, 43102, 0, 100, 0, 1, 0, 1, 1, 'Wolf Master Nandos - Frozen Orb'),
(4274, 43102, 0, 100, 0, 1, 0, 1, 1, 'Fenrus the Devourer - Frozen Orb'),
(4275, 43102, 0, 100, 0, 1, 0, 1, 1, 'Archmage Arugal - Frozen Orb'),
(4278, 43102, 0, 100, 0, 1, 0, 1, 1, 'Commander Springvale - Frozen Orb'),
(4279, 43102, 0, 100, 0, 1, 0, 1, 1, 'Odo the Blindwatcher - Frozen Orb'),
(4829, 43102, 0, 100, 0, 1, 0, 1, 1, 'Akumai - Frozen Orb'),
(4830, 43102, 0, 100, 0, 1, 0, 1, 1, 'Old Serrakis - Frozen Orb'),
(4831, 43102, 0, 100, 0, 1, 0, 1, 1, 'Lady Sarevess - Frozen Orb'),
(4832, 43102, 0, 100, 0, 1, 0, 1, 1, 'Twilight Lord Kelris - Frozen Orb'),
(4887, 43102, 0, 100, 0, 1, 0, 1, 1, 'Ghamoo-ra - Frozen Orb'),
(5775, 43102, 0, 100, 0, 1, 0, 1, 1, 'Verdan the Everliving - Frozen Orb'),
(6243, 43102, 0, 100, 0, 1, 0, 1, 1, 'Gelihast - Frozen Orb'),
(12902, 43102, 0, 100, 0, 1, 0, 1, 1, 'Lorgus Jett - Frozen Orb');

-- Add 20% chance Dream Shard to all trash mobs
-- Shadowfang Keep
DELETE FROM `creature_loot_template` WHERE `comment` LIKE '% - Small Dream Shard';
REPLACE INTO `creature_loot_template` VALUES
(2529, 34052, 0, 20, 0, 1, 0, 1, 1, 'Son of Arugal - Small Dream Shard'),
(3851, 34052, 0, 20, 0, 1, 0, 1, 1, 'Shadowfang Whitescalp - Small Dream Shard'),
(3853, 34052, 0, 20, 0, 1, 0, 1, 1, 'Shadowfang Moonwalker - Small Dream Shard'),
(3854, 34052, 0, 20, 0, 1, 0, 1, 1, 'Shadowfang Wolfguard - Small Dream Shard'),
(3855, 34052, 0, 20, 0, 1, 0, 1, 1, 'Shadowfang Darksoul - Small Dream Shard'),
(3857, 34052, 0, 20, 0, 1, 0, 1, 1, 'Shadowfang Glutton - Small Dream Shard'),
(3859, 34052, 0, 20, 0, 1, 0, 1, 1, 'Shadowfang Ragetooth - Small Dream Shard'),
(3861, 34052, 0, 20, 0, 1, 0, 1, 1, 'Bleak Worg - Small Dream Shard'),
(3862, 34052, 0, 20, 0, 1, 0, 1, 1, 'Slavering Worg - Small Dream Shard'),
(3863, 34052, 0, 20, 0, 1, 0, 1, 1, 'Lupine Horror - Small Dream Shard'),
(3864, 34052, 0, 20, 0, 1, 0, 1, 1, 'Fel Steed - Small Dream Shard'),
(3866, 34052, 0, 20, 0, 1, 0, 1, 1, 'Vile Bat - Small Dream Shard'),
(3868, 34052, 0, 20, 0, 1, 0, 1, 1, 'Blood Seeker - Small Dream Shard'),
(3873, 34052, 0, 20, 0, 1, 0, 1, 1, 'Tormented Officer - Small Dream Shard'),
(3875, 34052, 0, 20, 0, 1, 0, 1, 1, 'Haunted Servitor - Small Dream Shard'),
(3877, 34052, 0, 20, 0, 1, 0, 1, 1, 'Wailing Guardsman - Small Dream Shard'),
-- Stockade
(1706, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Prisoner - Small Dream Shard'),
(1707, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Captive - Small Dream Shard'),
(1708, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Inmate - Small Dream Shard'),
(1711, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Convict - Small Dream Shard'),
(1715, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Insurgent - Small Dream Shard'),
-- Deadmines
(622, 34052, 0, 20, 0, 1, 0, 1, 1, 'Goblin Engineer - Small Dream Shard'),
(634, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Overseer - Small Dream Shard'),
(636, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Blackguard - Small Dream Shard'),
(641, 34052, 0, 20, 0, 1, 0, 1, 1, 'Goblin Woodcarver - Small Dream Shard'),
(647, 34052, 0, 20, 0, 1, 0, 1, 1, 'Captain Greenskin - Small Dream Shard'),
(657, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Pirate - Small Dream Shard'),
(1729, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Evoker - Small Dream Shard'),
(1731, 34052, 0, 20, 0, 1, 0, 1, 1, 'Goblin Craftsman - Small Dream Shard'),
(1732, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Squallshaper - Small Dream Shard'),
(3947, 34052, 0, 20, 0, 1, 0, 1, 1, 'Goblin Shipbuilder - Small Dream Shard'),
(4417, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Taskmaster - Small Dream Shard'),
(4418, 34052, 0, 20, 0, 1, 0, 1, 1, 'Defias Wizard - Small Dream Shard'),
-- Wailing Caverns
(3636, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Ravager - Small Dream Shard'),
(3637, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Guardian - Small Dream Shard'),
(3640, 34052, 0, 20, 0, 1, 0, 1, 1, 'Evolving Ectoplasm - Small Dream Shard'),
(3840, 34052, 0, 20, 0, 1, 0, 1, 1, 'Druid of the Fang - Small Dream Shard'),
(5048, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Adder - Small Dream Shard'),
(5056, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Dreadfang - Small Dream Shard'),
(5755, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Viper - Small Dream Shard'),
(5756, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Venomwing - Small Dream Shard'),
(5761, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deviate Shambler - Small Dream Shard'),
-- Blackfathom Deeps
(4798, 34052, 0, 20, 0, 1, 0, 1, 1, 'Fallenroot Shadowstalker - Small Dream Shard'),
(4799, 34052, 0, 20, 0, 1, 0, 1, 1, 'Fallenroot Hellcaller - Small Dream Shard'),
(4805, 34052, 0, 20, 0, 1, 0, 1, 1, 'Blackfathom Sea Witce - Small Dream Shard'),
(4807, 34052, 0, 20, 0, 1, 0, 1, 1, 'Blackfathom Myrmidon - Small Dream Shard'),
(4809, 34052, 0, 20, 0, 1, 0, 1, 1, 'Twilight Acolyte - Small Dream Shard'),
(4810, 34052, 0, 20, 0, 1, 0, 1, 1, 'Twilight Reaver - Small Dream Shard'),
(4811, 34052, 0, 20, 0, 1, 0, 1, 1, 'Twilight Aquamancer - Small Dream Shard'),
(4812, 34052, 0, 20, 0, 1, 0, 1, 1, 'Twilight Loreseeker - Small Dream Shard'),
(4813, 34052, 0, 20, 0, 1, 0, 1, 1, 'Twilight Shadowmage - Small Dream Shard'),
(4814, 34052, 0, 20, 0, 1, 0, 1, 1, 'Twilight Elementalist - Small Dream Shard'),
(4815, 34052, 0, 20, 0, 1, 0, 1, 1, 'Murkshallow Snapclaw - Small Dream Shard'),
(4818, 34052, 0, 20, 0, 1, 0, 1, 1, 'Blindlight Murloc - Small Dream Shard'),
(4819, 34052, 0, 20, 0, 1, 0, 1, 1, 'Blindlight Muckdweller - Small Dream Shard'),
(4820, 34052, 0, 20, 0, 1, 0, 1, 1, 'Blindlight Oracle - Small Dream Shard'),
(4821, 34052, 0, 20, 0, 1, 0, 1, 1, 'Skittering Crustacean - Small Dream Shard'),
(4822, 34052, 0, 20, 0, 1, 0, 1, 1, 'Snapping Crustacean - Small Dream Shard'),
(4823, 34052, 0, 20, 0, 1, 0, 1, 1, 'Barbed Crustacean - Small Dream Shard'),
(4824, 34052, 0, 20, 0, 1, 0, 1, 1, 'Akumai Fisher - Small Dream Shard'),
(4825, 34052, 0, 20, 0, 1, 0, 1, 1, 'Akumai Snapjaw - Small Dream Shard'),
(4827, 34052, 0, 20, 0, 1, 0, 1, 1, 'Deep Pool Threshfin - Small Dream Shard');