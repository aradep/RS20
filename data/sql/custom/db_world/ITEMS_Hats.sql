-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom Hats +15 Stamina
-- -----------------------------------

-- Item template updates
UPDATE `item_template` SET `itemlevel` = 35, `requiredlevel` = 0, `bonding` = 2, `quality`=3, `itemset`=0, `maxcount`=0, `buyprice` = 0, `sellprice` = 0,`stat_type1` = 7, `stat_value1` = 15,`stat_type2` = 0, `stat_value2` = 0,`stat_type3` = 0, `stat_value3` = 0,`stat_type4` = 0, `stat_value4` = 0,`stat_type5` = 0, `stat_value5` = 0,`stat_type6` = 0, `stat_value6` = 0, `spellid_1` = 0, `spellid_2` = 0, `spellid_3` = 0
WHERE `requiredlevel` IN (60,70,80) AND `class` = 4 AND `inventorytype` = 1 AND `allowableclass` > 0 AND `itemset` > 0;

-- Turn plate items into mail
UPDATE `item_template` SET `class`=3 WHERE `class`=4 AND `subclass`=4;

-- Remove "Valorous" etc. from names
UPDATE `item_template` SET `name` = REPLACE(REPLACE(REPLACE( REPLACE(REPLACE(`name`, 'Conqueror''s ', ''),'Valorous ', ''),'Heroes'' ', ''),'Sanctified ', ''),' of Conquest', '');
