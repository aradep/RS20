-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Blizzlike item customization
-- -----------------------------------

-- Infinite Ammo --
UPDATE item_template SET name='Sharp Arrows', dmg_min1=5, dmg_max1=7, buycount = 1, stackable = 1, maxcount = 1, sellprice=0 WHERE entry IN (3030);
UPDATE item_template SET name='Heavy Shot',   dmg_min1=5, dmg_max1=7, buycount = 1, stackable = 1, maxcount = 1, sellprice=0 WHERE entry IN (3033);

-- Infinite Bandage --
UPDATE item_template SET  stackable=1,  name='Endless Runecloth Bandage',  quality=3,  buycount = 1,  bonding=0,  maxcount=1,  buyprice=0,  sellprice=0,  requiredskill=0,  requiredskillrank=0,  spellcharges_1=0  WHERE entry=14529;

-- Commendation of Bravery honor token
UPDATE item_template SET maxcount = 0, buycount = 1, stackable = 20 WHERE entry = 45706;

-- No CD Hearthstone
REPLACE INTO `spell_dbc` VALUES (8690, 1176, 0, 0, 134283264, 1024, 0, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 77, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220, 0, 776, 0, 0, 'Hearthstone', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 'Returns you to $z.  Speak to an Innkeeper in a different place to change your home location.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 0, 133, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0);
