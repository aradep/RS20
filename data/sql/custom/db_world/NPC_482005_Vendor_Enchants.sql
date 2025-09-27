-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Enchants
-- -----------------------------------

-- Creature
SET
@Entry      = 482005,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Enchantment Scrolls",
@Icon       = "Buy", -- Buy/Repair --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7,
@Class      = 1,
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 20,
@Faction    = 35;
DELETE FROM `creature_template` WHERE `Entry` = @Entry;
INSERT INTO `creature_template` (`Entry`, `Name`, `Subname`, `IconName`, `Minlevel`, `Maxlevel`, `Faction`, `Rank`, `NpcFlag`, `Type`, `unit_class`) VALUES (@Entry, @Name, @Title, @Icon, @Level, @Level, @Faction, @Rank, @Flags, @Type, @Class);                    
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES (@Entry, @Model, @Scale, 1);

SET 
@4xDreamShard  = 2553,
@10xDreamShard = 2554;

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,       1,      @10xDreamShard,   /*Scroll of Enchant 2H Weapon - Major Agility*/38922),
(@Entry,       1,      @10xDreamShard,   /*Scroll of Enchant 2H Weapon - Massacre*/44463),
(@Entry,       1,      @10xDreamShard,   /*Scroll of Enchant 2H Weapon - Scourgebane*/38981),

(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Accuracy*/44497),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Battlemaster*/38927),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Berserking*/44493),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Black Magic*/43987),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Blade Ward*/46026),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Blood Draining*/46098),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Deathfrost*/38998),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Exceptional Agility*/38995),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Exceptional Spirit*/38963),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Executioner*/38948),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Giant Slayer*/38988),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Icebreaker*/38965),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Lifeward*/38972),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Mighty Spellpower*/44467),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Mongoose*/38925),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Spellsurge*/38926),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Superior Potency*/44466),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Titanguard*/44946),
(@Entry,       2,      @10xDreamShard,   /*Scroll of Enchant Weapon - Fiery*/38838),

(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Defense*/38954),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Greater Intellect*/44455),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Intellect*/38905),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Major Stamina*/38945),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Resilience*/38949),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Resistance*/38907),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Shield Block*/38906),
(@Entry,       3,      @4xDreamShard,    /*Scroll of Enchant Shield - Tough Shield*/38904),

(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Greater Assault*/44469),
(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Greater Fortitude*/38966),
(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Greater Spirit*/38961),
(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Greater Vitality*/38974),
(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Icewalker*/38986),
(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Superior Agility*/38976),
(@Entry,       4,      @4xDreamShard,    /*Scroll of Enchant Boots - Tuskarr's Vitality*/39006),

(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Expertise*/38984),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Major Defense*/38899),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Major Stamina*/44947),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Restore Mana Prime*/38901),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Superior Spellpower*/44470),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Exceptional Intellect*/38968),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Greater Assault*/44815),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Greater Stats*/38987),
(@Entry,       5,      @4xDreamShard,    /*Scroll of Enchant Bracer - Major Spirit*/38980),

(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Defense*/38999),
(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Exceptional Mana*/38912),
(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Exceptional Resilience*/38975),
(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Greater Defense*/39002),
(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Greater Mana Restoration*/38962),
(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Powerful Stats*/44465),
(@Entry,       6,      @4xDreamShard,    /*Scroll of Enchant Chest - Super Health*/39005),

(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Dodge*/38895),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Greater Speed*/39003),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Mighty Armor*/39001),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Shadow Armor*/38993),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Spell Piercing*/38973),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Superior Agility*/38959),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Titanweave*/38978),
(@Entry,       7,      @4xDreamShard,    /*Scroll of Enchant Cloak - Wisdom*/39004),

(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Armsman*/38990),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Crusher*/44458),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Exceptional Spellpower*/38979),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Expertise*/38951),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Greater Blasting*/38985),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Major Agility*/38967),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Precision*/38953),
(@Entry,       8,      @4xDreamShard,    /*Scroll of Enchant Gloves - Threat*/38885),

(@Entry,       9,      @4xDreamShard,    /*Steel Weapon Chain*/6041),
(@Entry,       9,      @4xDreamShard,    /*Felsteel Shield Spike*/23530);

-- Placement
DELETE FROM `creature` WHERE `id1` = @Entry;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES (@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1985.66, -438.038, 11.2727, 2.96487, 300, 0, 0, 484, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
