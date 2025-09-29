-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater quest items
-- -----------------------------------

-- Clear blizzlike
UPDATE `item_template` SET `stackable`=50, `buyprice`=0, `sellprice`=0, `itemlevel`=1, `bonding`=4,`startquest`=0,`requiredlevel`=0,`class`=12,`subclass`=0,`Flags`=2048 WHERE `entry` IN (33351,15416,20935,3553,41557,10714,5784,3716,5064,34692,12923,38512,20741,4758,4753,21982,36786,44921,3348,22578,21885,22572,22451,22573,22452,22574,21884,22577,22456,43670);
UPDATE `item_template` SET `description`='' WHERE  `entry` IN (38512,20741,10714,43670);

-- Normal quests
UPDATE `item_template` SET `quality`=1, `maxcount`=  1, `spellid_1`=0, `name`='Razza\'s Report',            `description`='' WHERE `entry`=3721;
UPDATE `item_template` SET `quality`=2, `maxcount`= 20, `spellid_1`=0, `name`='Gorloc Fin',                 `description`='' WHERE `entry`=5784;
UPDATE `item_template` SET `quality`=3, `maxcount`=  5, `spellid_1`=0, `name`='Pristine Lynx Pelt',         `description`='' WHERE `entry`=4742;
UPDATE `item_template` SET `quality`=2, `maxcount`=  8, `spellid_1`=0, `name`='Vulture Talon',              `description`='' WHERE `entry`=5064;
UPDATE `item_template` SET `quality`=2, `maxcount`= 30, `spellid_1`=0, `name`='Polished Naga Scales',       `description`='' WHERE `entry`=12923;
UPDATE `item_template` SET `quality`=2, `maxcount`= 15, `spellid_1`=0, `name`='Malformed Satyr Horn',       `description`='' WHERE `entry`=38512;
UPDATE `item_template` SET `quality`=2, `maxcount`= 10, `spellid_1`=0, `name`='Whispering Ritual Totem',    `description`='Holding it gives you a sense of unease.' WHERE `entry`=20741;
UPDATE `item_template` SET `quality`=2, `maxcount`= 20, `spellid_1`=0, `name`='Bloody Wolvar Paw',          `description`='' WHERE `entry`=4758;
UPDATE `item_template` SET `quality`=2, `maxcount`= 20, `spellid_1`=0, `name`='Harpy Feather',              `description`='' WHERE `entry`=4753;
UPDATE `item_template` SET `quality`=2, `maxcount`= 20, `spellid_1`=0, `name`='Ogre Warbeads',              `description`='' WHERE `entry`=21982;
UPDATE `item_template` SET `quality`=2, `maxcount`=  6, `spellid_1`=0, `name`='Raptor Egg',                 `description`='' WHERE `entry`=46364;
UPDATE `item_template` SET `quality`=2, `maxcount`= 12, `spellid_1`=0, `name`='Thick Crocolisk Hide',       `description`='' WHERE `entry`=3348;
UPDATE `item_template` SET `quality`=2, `maxcount`= 5,  `spellid_1`=0, `name`='Enchanted Tiki Mask',        `description`='' WHERE `entry`=43670;
UPDATE `item_template` SET `quality`=2, `maxcount`= 10, `duration`=1800, `flagscustom`=1, `description`='It\'s slowly fizzling out of existence..', `name`='Mote of Water'  WHERE `entry`=22578;
UPDATE `item_template` SET `quality`=2, `maxcount`= 10, `duration`=1800, `flagscustom`=1, `description`='It\'s slowly fizzling out of existence..', `name`='Mote of Air'    WHERE `entry`=22572;
UPDATE `item_template` SET `quality`=2, `maxcount`= 10, `duration`=1800, `flagscustom`=1, `description`='It\'s slowly fizzling out of existence..', `name`='Mote of Fire'   WHERE `entry`=22574;
UPDATE `item_template` SET `quality`=3, `maxcount`= 1,  `spellid_1`=0,  `name`='Primal Water'           WHERE `entry`=21885;
UPDATE `item_template` SET `quality`=3, `maxcount`= 1,  `spellid_1`=0,  `name`='Primal Air'             WHERE `entry`=22451;
UPDATE `item_template` SET `quality`=3, `maxcount`= 1,  `spellid_1`=0,  `name`='Primal Fire'            WHERE `entry`=21884;
-- Elite Quests
UPDATE `item_template` SET `quality`=2, `maxcount`= 10, `duration`=1800, `flagscustom`=1, `description`='It\'s slowly fizzling out of existence..', `name`='Mote of Earth'  WHERE `entry`=22573;
UPDATE `item_template` SET `quality`=2, `maxcount`= 10, `duration`=1800, `flagscustom`=1, `description`='It\'s slowly fizzling out of existence..', `name`='Mote of Shadow' WHERE `entry`=22577;
UPDATE `item_template` SET `quality`=3, `maxcount`= 1,  `spellid_1`=0,  `name`='Primal Shadow'          WHERE `entry`=22456;
UPDATE `item_template` SET `quality`=3, `maxcount`= 1,  `spellid_1`=0,  `name`='Primal Earth'           WHERE `entry`=22452;
UPDATE `item_template` SET `quality`=3, `maxcount`=  3, `spellid_1`=0, `name`='Petrified Ironbark'     WHERE `entry`=36786;
UPDATE `item_template` SET `quality`=3, `maxcount`= 12, `spellid_1`=0, `name`='Black Dragonscale'      WHERE `entry`=15416;
UPDATE `item_template` SET `quality`=3, `maxcount`= 10, `spellid_1`=0, `name`='Spirit Ash'             WHERE `entry`=20935;
UPDATE `item_template` SET `quality`=3, `maxcount`=  1, `spellid_1`=0, `name`='Ancient Chimaera Horn'  WHERE `entry`=33351;
UPDATE `item_template` SET `quality`=3, `maxcount`=  1, `spellid_1`=0, `name`='King Gorloc\'s Head'    WHERE `entry`=3716;
UPDATE `item_template` SET `quality`=4, `maxcount`=  1, `spellid_1`=0, `name`='Ogre Overlord\'s Head'  WHERE `entry`=3553;