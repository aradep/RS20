-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Dungeon graveyard edits to respawn inside
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