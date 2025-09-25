-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom Currency Items
-- -----------------------------------

-- Honor Coin
UPDATE `item_template` SET `requiredlevel`=0, `quality`=4, `name`='Honor Coin', `description`='Can be exchanged for Honor Points.'  WHERE `entry` = 37836;

-- Mount Certificate
UPDATE `item_template` SET `name`='Mount Certificate', `description`='Can be exchanged for a rare mount.', `Quality`=7, `flags`=134283264 WHERE `entry`= 46114;

-- Badge of Justice
UPDATE `item_template` SET `description`='Can be exchanged for heirlooms.', `requiredlevel`=20, `itemlevel`=20 WHERE `entry`= 29434;

-- Small Dream Shard
UPDATE `item_template` SET `bonding`=0, `quality` = 3, `stackable` = 200 WHERE `entry` = 34053;

-- Dream Shard
UPDATE `item_template` SET `buycount` = 4, `bonding`=0, `quality` = 3, `stackable` = 100, `description`='Can be exchanged for rare items.' WHERE `entry` = 34052;

-- Frozen Orb
UPDATE `item_template` SET `buycount` = 1, `sellprice` = 0, `bonding`=0, `quality` = 3, `stackable` = 20, `description`='Can be exchanged for potions and elixirs.' WHERE `entry` = 43102;

-- Magic Dust
UPDATE `item_template` SET `buycount` = 1, `sellprice` = 0, `bonding`=0, `quality` = 2, `stackable` = 200, `name`='Magic Dust', description='Can be exchanged for enchantment scrolls.' WHERE `entry` = 46849;