-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater setup
-- -----------------------------------

-- Make Azshara Crater a Free-for-all PvP map
REPLACE INTO `areatable_dbc` VALUES 
(268,  37, 0, 580, 17536, 0, 11, 42, 0, 0, 0, 'Azshara Crater', "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 16712190, 0, 0, 0, 0, 0, -500, 0, 0);

-- Graveyard
DELETE FROM `game_graveyard` WHERE `ID`=4;
INSERT INTO `game_graveyard` VALUES (4, 37, 444.971, 141.985, 305.974, 'Azshara Crater');
DELETE FROM `game_graveyard` WHERE `ID` IN (1460,10);
INSERT INTO `game_graveyard` VALUES (1460, 37, 444.971, 141.985, 305.974, 'Azshara Crater');
INSERT INTO `game_graveyard` VALUES (10, 37, 444.971, 141.985, 305.964, 'Azshara Crater');
DELETE FROM `graveyard_zone` WHERE `ID` IN (1460,10) AND `GhostZone`=268;
INSERT INTO `graveyard_zone` VALUES (1460, 268, 469, 'Azshara Crater');
INSERT INTO `graveyard_zone` VALUES (10, 268, 67, 'Azshara Crater');
