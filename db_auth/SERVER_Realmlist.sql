-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- -----------------------------------

-- Realm Changes
-- -----------------------------------

-- Realmlist
DELETE FROM `realmlist` WHERE `id`=1;
INSERT INTO `realmlist` VALUES (1, 'Dragonshrine', 'rubysanctum.duckdns.org', '127.0.0.1', '255.255.255.0', 8085, 1, 32, 2, 0, 0, 12340);

-- Message of the day
UPDATE `motd` SET `text`='Welcome, champion.' WHERE `realmid`=-1;