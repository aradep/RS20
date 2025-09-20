-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom well-fed food
-- -----------------------------------

-- Food (Fruit)
UPDATE item_template SET requiredlevel= 0, bonding= 0, buycount = 20, stackable= 20, buyprice=0, sellprice=0, itemlevel= 25, flags= 0, requiredreputationfaction= 0, requiredreputationrank= 0 WHERE entry IN (43087,13810,11950,4538,4537,42430,22895,42428,42431,42433);
UPDATE item_template SET `name`= 'Elwynn Apple',              spellid_1= 64354 WHERE entry= 43087;
UPDATE item_template SET `name`= 'Eversong Sunfruit',         spellid_1= 64354 WHERE entry= 13810;
UPDATE item_template SET `name`= 'Tirisfal Grapes',           spellid_1= 64354 WHERE entry= 11950;
UPDATE item_template SET `name`= 'Hillsbrad Watermelon',      spellid_1= 64354 WHERE entry= 4538;
UPDATE item_template SET `name`= 'Kezan Banana',              spellid_1= 64354 WHERE entry= 4537;
-- Food (Sweets)
UPDATE item_template SET `name`= 'Frosted Doughnut',          spellid_1= 64354 WHERE entry= 42430;
UPDATE item_template SET `name`= 'Cinnamon Bun',              spellid_1= 64354 WHERE entry= 22895;
UPDATE item_template SET `name`= 'Vanilla Cupcake',           spellid_1= 64354 WHERE entry= 42428;
UPDATE item_template SET `name`= 'Dalaran Brownie',           spellid_1= 64354 WHERE entry= 42431;
UPDATE item_template SET `name`= 'Chocolate Cheesecake',      spellid_1= 64354 WHERE entry= 42433;
