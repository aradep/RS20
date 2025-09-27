-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Bag Tweaking
-- -----------------------------------

-- Starting Bag (Runecloth Bag)
UPDATE `item_template` SET `containerslots`=20, `sellprice`=0 WHERE `entry` = 14046;

-- Medium Bag (Frostweave Bag)
UPDATE `item_template` SET `containerslots`=24, `sellprice`=0 WHERE `entry` = 41599;

-- Big Bag (Glacial Bag)
UPDATE `item_template` SET `containerslots`=28, `sellprice`=0 WHERE `entry` = 41600;

-- Huge Bag (Portable Hole)
UPDATE `item_template` SET `containerslots`=32, `sellprice`=0 WHERE `entry` = 51809;