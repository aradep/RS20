-- -----------------------------------
-- "Hall of Champions" Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom Hats +15 Stamina
-- -----------------------------------

-- Item template updates
UPDATE `item_template` SET 
`itemlevel` = 35, 
`requiredlevel` = 0, 
`armor`=43, 
`maxdurability`=60, 
`flags`=0, 
`holy_res`=0, 
`fire_res`=0, 
`nature_res`=0, 
`frost_res`=0, 
`shadow_res`=0, 
`arcane_res`=0, 
`allowableclass`=-1,
`socketcolor_1`=0, 
`socketcolor_2`=0, 
`socketcolor_3`=0, 
`socketcontent_1`=0, 
`socketcontent_2`=0, 
`socketcontent_3`=0, 
`socketbonus`=0, 
`bonding` = 2, 
`quality`=3, 
`itemset`=0, 
`maxcount`=0, 
`buyprice` = 0, 
`sellprice` = 0,
`stat_type1` = 7, 
`stat_value1` = 15,
`stat_type2` = 0, 
`stat_value2` = 0,
`stat_type3` = 0, 
`stat_value3` = 0,
`stat_type4` = 0, 
`stat_value4` = 0,
`stat_type5` = 0, 
`stat_value5` = 0,
`stat_type6` = 0, 
`stat_value6` = 0, 
`spellid_1` = 0, 
`spellid_2` = 0, 
`spellid_3` = 0
WHERE `requiredlevel` IN (60,70,80) AND `class` = 4 AND `inventorytype` = 1 AND `allowableclass` > 0 AND `itemset` > 0;
