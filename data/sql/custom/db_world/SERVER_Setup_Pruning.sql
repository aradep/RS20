-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Server setup - Pruning unused content
-- -----------------------------------

-- Disable unused NPCs
UPDATE `creature` SET `spawnmask` = 0 WHERE `map` = 189 AND `guid` < 2000000;
UPDATE `creature` SET `spawnmask` = 0 WHERE `map` NOT IN (
36,43,33,48,34, -- Dungeons
189, -- SM
529, -- AB
489, -- WSG
559, -- Arena
562, -- Arena
617, -- Arena
618, -- Arena
37, -- Azshara Crater
169 -- Azshara Crater
);

-- Disable unused gameobjects
UPDATE `gameobject` SET `spawnmask` = 0 WHERE `map` = 189 AND `id` != 101854; -- Herod's Door
UPDATE `gameobject` SET `spawnmask` = 0 WHERE `map` NOT IN (
36,43,33,48,34, -- Dungeons
189, -- SM
529, -- AB
489, -- WSG
559, -- Arena
562, -- Arena
617, -- Arena
618, -- Arena
37, -- Azshara Crater
169 -- Azshara Crater
);

-- Re-enable all stuff in coordinates of Argent Tournament Grounds
UPDATE `gameobject` SET `spawnMask` = 1 WHERE `map` = 571 AND `position_x` > 8000 AND `position_x` < 8800 AND `position_y` < 1200 AND `position_y` > 500;
UPDATE `creature` SET `spawnMask` = 1 WHERE `comment` = 'CustomNPC' AND `map` = 571 AND `position_x` > 8000 AND `position_x` < 8800 AND `position_y` < 1200 AND `position_y` > 500;
-- Re-disable unwanted stuff at Argent Tournament Grounds
UPDATE `creature` SET `spawnMask` = 0 WHERE `id1` IN (35501, 17213, 36069, 33543, 33643, 28756, 20735, 32287, 30115);
UPDATE `gameobject` SET `spawnMask` = 0 WHERE `id` IN (186943);

-- Delete unused linked respawns
DELETE lr
FROM linked_respawn lr
LEFT JOIN creature c1 ON lr.guid = c1.guid
LEFT JOIN creature c2 ON lr.linkedguid = c2.guid
WHERE (c1.spawnmask = 0 OR c2.spawnmask = 0);

-- Remove transports
DELETE FROM `transports` WHERE `guid` > 0;