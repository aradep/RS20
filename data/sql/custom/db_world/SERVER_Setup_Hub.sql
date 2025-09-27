-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Server setup - Main player hub
-- -----------------------------------

-- Player starting location
UPDATE `playercreateinfo` SET `map` = 189, `zone` = 796, `position_x` = 1945.74, `position_y` = -431.596, `position_z` = 16.368, `orientation` = 0 WHERE `race` in (1,2,3,4,5,6,7,8,10,11);

-- Make Scarlet Monestary an open-world sanctuary
REPLACE INTO `areatable_dbc` VALUES 
(796, 189, 0, 319,  2048, 0, 11, 42, 0, 0, 0, 'Scarlet Monestary', "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `map_dbc` VALUES (189, 'MonasteryInstances', 0, 0, 0, 'Scarlet Monastery', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 190, 1, 0, 2892.24, -811.264, -1, 0, 0, 0);
REPLACE INTO `mapdifficulty_dbc` VALUES (22, 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16712188, 0, 0, '');
DELETE FROM `instance_template` WHERE `map`=189;

-- Add Graveyard to player hub
DELETE FROM `game_graveyard` WHERE `ID` IN (1890,1891);
INSERT INTO `game_graveyard` (`ID`, `Map`, `x`, `y`, `z`, `Comment`) VALUES
(1890, 189, 1945.74, -431.596, 16.368, 'Scarlet Monastery Hub'),
(1891, 189, 1945.74, -431.596, 16.368, 'Scarlet Monastery Hub');
DELETE FROM `graveyard_zone` WHERE `ID` IN (1890,1891) AND `GhostZone`=796;
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`) VALUES
(1890, 796, 0, 'Scarlet Monastery Hub'),
(1891, 796, 0, 'Scarlet Monastery Hub');

-- Make Herod's door impassable while dead
UPDATE `gameobject_template` SET `type`= 10 WHERE `entry` IN (101854);
    
-- All dungeon portals lead back to hub
UPDATE `areatrigger_teleport` SET `target_map`=189, `target_position_x`=1945.74, `target_position_y`=-431.596, `target_position_z`=16.368, `target_orientation`=0 WHERE `target_map` IN (0,1);

-- RGB Lighting
UPDATE `gameobject_template` SET `type`= 10, `size`='0.5' WHERE `entry`=189305;
