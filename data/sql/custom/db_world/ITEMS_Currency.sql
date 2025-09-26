-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom Currency Items
-- -----------------------------------

-- Honor Coin
UPDATE `item_template` SET `requiredlevel`=0, `quality`=4, `name`='Honor Coin', `description`='Can be exchanged for Honor Points or Badges of Justice.'  WHERE `entry` = 37836;

-- Mount Certificate
UPDATE `item_template` SET `name`='Golden Certificate', `description`='Can be exchanged for a special mount!', `Quality`=7, `flags`=134283264 WHERE `entry`= 46114;

-- Emblem of Heroism
UPDATE `item_template` SET `name`='Badge of Justice', `description`='A reward for defeating bosses.', `requiredlevel`=0, `itemlevel`=20 WHERE `entry`= 40752;

-- Emblem of Valor
UPDATE `item_template` SET `name`='Emblem of Style', `description`='Found inside mystery boxes.', `requiredlevel`=0, `itemlevel`=20 WHERE `entry`= 40753;

-- Small Dream Shard
UPDATE `item_template` SET `bonding`=0, `quality` = 3, `stackable` = 200 WHERE `entry` = 34053;

-- Dream Shard
UPDATE `item_template` SET `buycount` = 4, `bonding`=0, `quality` = 3, `stackable` = 100, `description`='The remnant of a lost soul.' WHERE `entry` = 34052;

-- Frozen Orb
UPDATE `item_template` SET `buycount` = 1, `sellprice` = 0, `bonding`=0, `quality` = 3, `stackable` = 20, `description`='Found inside mystery boxes.' WHERE `entry` = 43102;

-- Magic Dust
UPDATE `item_template` SET `buycount` = 1, `sellprice` = 0, `bonding`=0, `quality` = 3, `stackable` = 200, `name`='Magic Dust', `description`='Produced by Disenchanting.' WHERE `entry` = 46849;