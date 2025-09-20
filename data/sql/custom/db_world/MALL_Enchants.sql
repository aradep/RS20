SET
@WeaponEnchantVendor = 28714,
@ArmorEnchantVendor = 32514,
@ArcanumVendor = 33597,
@LegEnchantVendor = 28693,

@Dream_Shard_x4 = 2553,
@Dream_Shard_x10 = 2554;

--  __          __                                 ______               _                    _    __      __               _              
--  \ \        / /                                |  ____|             | |                  | |   \ \    / /              | |             
--   \ \  /\  / /___   __ _  _ __    ___   _ __   | |__    _ __    ___ | |__    __ _  _ __  | |_   \ \  / /___  _ __    __| |  ___   _ __ 
--    \ \/  \/ // _ \ / _` || '_ \  / _ \ | '_ \  |  __|  | '_ \  / __|| '_ \  / _` || '_ \ | __|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--     \  /\  /|  __/| (_| || |_) || (_) || | | | | |____ | | | || (__ | | | || (_| || | | || |_     \  /|  __/| | | || (_| || (_) || |   
--      \/  \/  \___| \__,_|| .__/  \___/ |_| |_| |______||_| |_| \___||_| |_| \__,_||_| |_| \__|     \/  \___||_| |_| \__,_| \___/ |_|   
-- -------------------------| |---------------------------------------------------------------------------------------------------------
-- -------------------------|_|---------------------------------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE Entry=@WeaponEnchantVendor; INSERT INTO npc_vendor 
-- -------------------------------------------------------------------------------------------------------------------------------------
(Entry,                     Slot,   ExtendedCost,       Item) VALUES
-- -------------------------------------------------------------------------------------------------------------------------------------
(@WeaponEnchantVendor,      1,      @Dream_Shard_x10,   /*Scroll of Enchant 2H Weapon - Major Agility*/38922),
(@WeaponEnchantVendor,      1,      @Dream_Shard_x10,   /*Scroll of Enchant 2H Weapon - Massacre*/44463),
(@WeaponEnchantVendor,      1,      @Dream_Shard_x10,   /*Scroll of Enchant 2H Weapon - Scourgebane*/38981),

(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Accuracy*/44497),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Battlemaster*/38927),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Berserking*/44493),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Black Magic*/43987),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Blade Ward*/46026),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Blood Draining*/46098),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Deathfrost*/38998),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Exceptional Agility*/38995),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Exceptional Spirit*/38963),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Executioner*/38948),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Giant Slayer*/38988),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Icebreaker*/38965),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Lifeward*/38972),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Mighty Spellpower*/44467),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Mongoose*/38925),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Spellsurge*/38926),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Superior Potency*/44466),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Titanguard*/44946),
(@WeaponEnchantVendor,      2,      @Dream_Shard_x10,   /*Scroll of Enchant Weapon - Fiery*/38838),

(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Defense*/38954),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Greater Intellect*/44455),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Intellect*/38905),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Major Stamina*/38945),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Resilience*/38949),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Resistance*/38907),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Shield Block*/38906),
(@WeaponEnchantVendor,      3,      @Dream_Shard_x4,   /*Scroll of Enchant Shield - Tough Shield*/38904);

--                                           ______               _                    _    __      __               _              
--     /\                                   |  ____|             | |                  | |   \ \    / /              | |             
--    /  \    _ __  _ __ ___    ___   _ __  | |__    _ __    ___ | |__    __ _  _ __  | |_   \ \  / /___  _ __    __| |  ___   _ __ 
--   / /\ \  | '__|| '_ ` _ \  / _ \ | '__| |  __|  | '_ \  / __|| '_ \  / _` || '_ \ | __|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--  / ____ \ | |   | | | | | || (_) || |    | |____ | | | || (__ | | | || (_| || | | || |_     \  /|  __/| | | || (_| || (_) || |   
-- /_/    \_\|_|   |_| |_| |_| \___/ |_|    |______||_| |_| \___||_| |_| \__,_||_| |_| \__|     \/  \___||_| |_| \__,_| \___/ |_|       
-- -------------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE  Entry= @ArmorEnchantVendor; INSERT INTO npc_vendor 
-- -------------------------------------------------------------------------------------------------------------------------------------
(Entry,                     Slot,   ExtendedCost,       Item) VALUES
-- -------------------------------------------------------------------------------------------------------------------------------------
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Greater Assault*/44469),
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Greater Fortitude*/38966),
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Greater Spirit*/38961),
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Greater Vitality*/38974),
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Icewalker*/38986),
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Superior Agility*/38976),
(@ArmorEnchantVendor,       1,      @Dream_Shard_x4,    /*Scroll of Enchant Boots - Tuskarr's Vitality*/39006),

(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Expertise*/38984),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Major Defense*/38899),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Major Stamina*/44947),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Restore Mana Prime*/38901),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Superior Spellpower*/44470),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Exceptional Intellect*/38968),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Greater Assault*/44815),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Greater Stats*/38987),
(@ArmorEnchantVendor,       2,      @Dream_Shard_x4,    /*Scroll of Enchant Bracer - Major Spirit*/38980),

(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Defense*/38999),
(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Exceptional Mana*/38912),
(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Exceptional Resilience*/38975),
(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Greater Defense*/39002),
(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Greater Mana Restoration*/38962),
(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Powerful Stats*/44465),
(@ArmorEnchantVendor,       3,      @Dream_Shard_x4,    /*Scroll of Enchant Chest - Super Health*/39005),

(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Dodge*/38895),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Greater Speed*/39003),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Mighty Armor*/39001),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Shadow Armor*/38993),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Spell Piercing*/38973),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Superior Agility*/38959),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Titanweave*/38978),
(@ArmorEnchantVendor,       4,      @Dream_Shard_x4,    /*Scroll of Enchant Cloak - Wisdom*/39004),

(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Armsman*/38990),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Crusher*/44458),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Exceptional Spellpower*/38979),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Expertise*/38951),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Greater Blasting*/38985),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Major Agility*/38967),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Precision*/38953),
(@ArmorEnchantVendor,       5,      @Dream_Shard_x4,    /*Scroll of Enchant Gloves - Threat*/38885);

/* Arcanum Vendor */
-- -------------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE  Entry= @ArcanumVendor; INSERT INTO npc_vendor 
-- -------------------------------------------------------------------------------------------------------------------------------------
(Entry,             Slot,   ExtendedCost,           Item) VALUES
-- -------------------------------------------------------------------------------------------------------------------------------------
(@ArcanumVendor,    1,      @Dream_Shard_x4,    /*Arcanum of Blissful Mending*/44152),
(@ArcanumVendor,    1,      @Dream_Shard_x4,    /*Arcanum of Burning Mysteries*/44159),
(@ArcanumVendor,    1,      @Dream_Shard_x4,    /*Arcanum of the Savage Gladiator*/44701),
(@ArcanumVendor,    1,      @Dream_Shard_x4,    /*Arcanum of the Stalwart Protector*/44150),
(@ArcanumVendor,    1,      @Dream_Shard_x4,    /*Arcanum of Torment*/44149),
(@ArcanumVendor,    2,      @Dream_Shard_x4,    /*Greater Inscription of the Axe*/44133),
(@ArcanumVendor,    2,      @Dream_Shard_x4,    /*Greater Inscription of the Crag*/44134),
(@ArcanumVendor,    2,      @Dream_Shard_x4,    /*Greater Inscription of the Pinnacle*/44136),
(@ArcanumVendor,    2,      @Dream_Shard_x4,    /*Greater Inscription of the Storm */44135);


/* Leg Enchant Vendor */
-- -------------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE  Entry= @LegEnchantVendor; INSERT INTO npc_vendor 
-- -------------------------------------------------------------------------------------------------------------------------------------
(Entry,             Slot,   ExtendedCost,           Item) VALUES
-- -------------------------------------------------------------------------------------------------------------------------------------
(@LegEnchantVendor,    5,      @Dream_Shard_x10,    /*Icescale Leg Armor*/38374),
(@LegEnchantVendor,    5,      @Dream_Shard_x10,    /*Frosthide Leg Armor*/38373),
(@LegEnchantVendor,    5,      @Dream_Shard_x10,    /*Earthen Leg Armor*/44963),
(@LegEnchantVendor,    6,      @Dream_Shard_x10,    /*Sapphire Spellthread*/41604),
(@LegEnchantVendor,    6,      @Dream_Shard_x10,    /*Brilliant Spellthread*/41602);

/* BOP, BUYS FOR 0, SELL FOR 0, NOT DISENCHANTABLE */ 
UPDATE `item_template` SET `quality`=4 WHERE `entry` IN (38374,38373,44963,41604,41602);
UPDATE `item_template` SET `quality`=3 WHERE `entry` IN (44152,44159,44701,44150,44149,44133,44134,44136,44135);
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `requiredlevel`=0, `bonding`=0, `buyprice`=0, `sellprice`=0, `flags`=268435520 WHERE `npc_vendor`.`entry` IN (@WeaponEnchantVendor,@ArmorEnchantVendor,@ArcanumVendor,@LegEnchantVendor);

UPDATE `item_template` SET `name`='Enchant Boots - Dexterity' WHERE `entry`=37603;

UPDATE `item_template` SET `name`='Enchant Shield - Tough Shield' WHERE `entry`=38904;
UPDATE `item_template` SET `name`='Enchant Shield - Intellect' WHERE `entry`=38905;
UPDATE `item_template` SET `name`='Enchant Shield - Shield Block' WHERE `entry`=38906;
UPDATE `item_template` SET `name`='Enchant Shield - Resistance' WHERE `entry`=38907;
UPDATE `item_template` SET `name`='Enchant 2H Weapon - Major Agility' WHERE `entry`=38922;
UPDATE `item_template` SET `name`='Enchant Weapon - Mongoose' WHERE `entry`=38925;
UPDATE `item_template` SET `name`='Enchant Weapon - Spellsurge' WHERE `entry`=38926;
UPDATE `item_template` SET `name`='Enchant Weapon - Battlemaster' WHERE `entry`=38927;
UPDATE `item_template` SET `name`='Enchant Shield - Major Stamina' WHERE `entry`=38945;
UPDATE `item_template` SET `name`='Enchant Weapon - Executioner' WHERE `entry`=38948;
UPDATE `item_template` SET `name`='Enchant Shield - Resilience' WHERE `entry`=38949;
UPDATE `item_template` SET `name`='Enchant Shield - Defense' WHERE `entry`=38954;
UPDATE `item_template` SET `name`='Enchant Weapon - Exceptional Spirit' WHERE `entry`=38963;
UPDATE `item_template` SET `name`='Enchant Weapon - Icebreaker' WHERE `entry`=38965;
UPDATE `item_template` SET `name`='Enchant Weapon - Lifeward' WHERE `entry`=38972;
UPDATE `item_template` SET `name`='Enchant 2H Weapon - Scourgebane' WHERE `entry`=38981;
UPDATE `item_template` SET `name`='Enchant Weapon - Giant Slayer' WHERE `entry`=38988;
UPDATE `item_template` SET `name`='Enchant Weapon - Exceptional Agility' WHERE `entry`=38995;
UPDATE `item_template` SET `name`='Enchant Weapon - Deathfrost' WHERE `entry`=38998;
UPDATE `item_template` SET `name`='Enchant Weapon - Black Magic' WHERE `entry`=43987;
UPDATE `item_template` SET `name`='Enchant Shield - Greater Intellect' WHERE `entry`=44455;
UPDATE `item_template` SET `name`='Enchant 2H Weapon - Massacre' WHERE `entry`=44463;
UPDATE `item_template` SET `name`='Enchant Weapon - Superior Potency' WHERE `entry`=44466;
UPDATE `item_template` SET `name`='Enchant Weapon - Mighty Spellpower' WHERE `entry`=44467;
UPDATE `item_template` SET `name`='Enchant Weapon - Berserking' WHERE `entry`=44493;
UPDATE `item_template` SET `name`='Enchant Weapon - Accuracy' WHERE `entry`=44497;
UPDATE `item_template` SET `name`='Enchant Weapon - Titanguard' WHERE `entry`=44946;
UPDATE `item_template` SET `name`='Enchant Weapon - Blade Ward' WHERE `entry`=46026;
UPDATE `item_template` SET `name`='Enchant Weapon - Blood Draining' WHERE `entry`=46098;
UPDATE `item_template` SET `name`='Enchant Gloves - Threat' WHERE `entry`=38885;
UPDATE `item_template` SET `name`='Enchant Cloak - Dodge' WHERE `entry`=38895;
UPDATE `item_template` SET `name`='Enchant Bracer - Major Defense' WHERE `entry`=38899;
UPDATE `item_template` SET `name`='Enchant Bracer - Restore Mana Prime' WHERE `entry`=38901;
UPDATE `item_template` SET `name`='Enchant Chest - Exceptional Mana' WHERE `entry`=38912;
UPDATE `item_template` SET `name`='Enchant Gloves - Expertise' WHERE `entry`=38951;
UPDATE `item_template` SET `name`='Enchant Gloves - Precision' WHERE `entry`=38953;
UPDATE `item_template` SET `name`='Enchant Cloak - Superior Agility' WHERE `entry`=38959;
UPDATE `item_template` SET `name`='Enchant Boots - Greater Spirit' WHERE `entry`=38961;
UPDATE `item_template` SET `name`='Enchant Chest - Greater Mana Restoration' WHERE `entry`=38962;
UPDATE `item_template` SET `name`='Enchant Boots - Greater Fortitude' WHERE `entry`=38966;
UPDATE `item_template` SET `name`='Enchant Gloves - Major Agility' WHERE `entry`=38967;
UPDATE `item_template` SET `name`='Enchant Bracers - Exceptional Intellect' WHERE `entry`=38968;
UPDATE `item_template` SET `name`='Enchant Cloak - Spell Piercing' WHERE `entry`=38973;
UPDATE `item_template` SET `name`='Enchant Boots - Greater Vitality' WHERE `entry`=38974;
UPDATE `item_template` SET `name`='Enchant Chest - Exceptional Resilience' WHERE `entry`=38975;
UPDATE `item_template` SET `name`='Enchant Boots - Superior Agility' WHERE `entry`=38976;
UPDATE `item_template` SET `name`='Enchant Cloak - Titanweave' WHERE `entry`=38978;
UPDATE `item_template` SET `name`='Enchant Gloves - Exceptional Spellpower' WHERE `entry`=38979;
UPDATE `item_template` SET `name`='Enchant Bracers - Major Spirit' WHERE `entry`=38980;
UPDATE `item_template` SET `name`='Enchant Bracer - Expertise' WHERE `entry`=38984;
UPDATE `item_template` SET `name`='Enchant Gloves - Greater Blasting' WHERE `entry`=38985;
UPDATE `item_template` SET `name`='Enchant Boots - Icewalker' WHERE `entry`=38986;
UPDATE `item_template` SET `name`='Enchant Bracers - Greater Stats' WHERE `entry`=38987;
UPDATE `item_template` SET `name`='Enchant Gloves - Armsman' WHERE `entry`=38990;
UPDATE `item_template` SET `name`='Enchant Cloak - Shadow Armor' WHERE `entry`=38993;
UPDATE `item_template` SET `name`='Enchant Chest - Defense' WHERE `entry`=38999;
UPDATE `item_template` SET `name`='Enchant Cloak - Mighty Armor' WHERE `entry`=39001;
UPDATE `item_template` SET `name`='Enchant Chest - Greater Defense' WHERE `entry`=39002;
UPDATE `item_template` SET `name`='Enchant Cloak - Greater Speed' WHERE `entry`=39003;
UPDATE `item_template` SET `name`='Enchant Cloak - Wisdom' WHERE `entry`=39004;
UPDATE `item_template` SET `name`='Enchant Chest - Super Health' WHERE `entry`=39005;
UPDATE `item_template` SET `name`='Enchant Boots - Tuskarr\'s Vitality' WHERE `entry`=39006;
UPDATE `item_template` SET `name`='Enchant Gloves - Crusher' WHERE `entry`=44458;
UPDATE `item_template` SET `name`='Enchant Chest - Powerful Stats' WHERE `entry`=44465;
UPDATE `item_template` SET `name`='Enchant Boots - Greater Assault' WHERE `entry`=44469;
UPDATE `item_template` SET `name`='Enchant Bracer - Superior Spellpower' WHERE `entry`=44470;
UPDATE `item_template` SET `name`='Enchant Bracers - Greater Assault' WHERE `entry`=44815;
UPDATE `item_template` SET `name`='Enchant Bracer - Major Stamina' WHERE `entry`=44947;
UPDATE `item_template` SET `name`='Enchant Weapon - Fiery Weapon' WHERE `entry`=38838;