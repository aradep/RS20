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
@Entry      = 482007,
@Model      = 27216,
@Scale      = 2,
@Name       = "Vendor NPC",
@Title      = "Minor Glyphs",
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

-- Vendor List
DELETE FROM `npc_vendor` WHERE `Entry` = @Entry;
INSERT INTO `npc_vendor` 
-- ----------------------------------------------------------------------------------------
(`Entry`,   `Slot`,     `ExtendedCost`,   `Item`) VALUES
-- ----------------------------------------------------------------------------------------
(@Entry,    1,      0,    /*Glyph of Enduring Victory*/43400),
(@Entry,    1,      0,    /*Glyph of Battle*/43395),
(@Entry,    1,      0,    /*Glyph of Bloodrage*/43396),
(@Entry,    1,      0,    /*Glyph of Charge*/43397),
(@Entry,    1,      0,    /*Glyph of Mocking Blow*/43398),
(@Entry,    1,      0,    /*Glyph of Thunder Clap*/43399),
(@Entry,    1,      0,    /*Glyph of Command*/49084),
(@Entry,    2,      0,    /*Glyph of Blessing of Might*/43340),
(@Entry,    2,      0,    /*Glyph of Blessing of Kings*/43365),
(@Entry,    2,      0,    /*Glyph of Blessing of Wisdom*/43366),
(@Entry,    2,      0,    /*Glyph of Lay on Hands*/43367),
(@Entry,    2,      0,    /*Glyph of Sense Undead*/43368),
(@Entry,    2,      0,    /*Glyph of the Wise*/43369),
(@Entry,    3,      0,    /*Glyph of Revive Pet*/43338),
(@Entry,    3,      0,    /*Glyph of Mend Pet*/43350),
(@Entry,    3,      0,    /*Glyph of Feign Death*/43351),
(@Entry,    3,      0,    /*Glyph of Possessed Strength*/43354),
(@Entry,    3,      0,    /*Glyph of the Pack*/43355),
(@Entry,    3,      0,    /*Glyph of Scare Beast*/43356),
(@Entry,    4,      0,    /*Glyph of Pick Pocket*/43343),
(@Entry,    4,      0,    /*Glyph of Distract*/43376),
(@Entry,    4,      0,    /*Glyph of Pick Lock*/43377),
(@Entry,    4,      0,    /*Glyph of Safe Fall*/43378),
(@Entry,    4,      0,    /*Glyph of Blurred Speed*/43379),
(@Entry,    4,      0,    /*Glyph of Vanish*/43380),
(@Entry,    5,      0,    /*Glyph of Fading*/43342),
(@Entry,    5,      0,    /*Glyph of Levitate*/43370),
(@Entry,    5,      0,    /*Glyph of Fortitude*/43371),
(@Entry,    5,      0,    /*Glyph of Shadow Protection*/43372),
(@Entry,    5,      0,    /*Glyph of Shackle Undead*/43373),
(@Entry,    5,      0,    /*Glyph of Shadowfiend*/43374),
(@Entry,    6,      0,    /*Glyph of Blood Tap*/43535),
(@Entry,    6,      0,    /*Glyph of Deaths Embrace*/43539),
(@Entry,    6,      0,    /*Glyph of Horn of Winter*/43544),
(@Entry,    6,      0,    /*Glyph of Corpse Explosion*/43671),
(@Entry,    6,      0,    /*Glyph of Pestilence*/43672),
(@Entry,    6,      0,    /*Glyph of Raise Dead*/43673),
(@Entry,    7,      0,    /*Glyph of Water Breathing*/43344),
(@Entry,    7,      0,    /*Glyph of Astral Recall*/43381),
(@Entry,    7,      0,    /*Glyph of Renewed Life*/43385),
(@Entry,    7,      0,    /*Glyph of Water Shield*/43386),
(@Entry,    7,      0,    /*Glyph of Water Walking*/43388),
(@Entry,    7,      0,    /*Glyph of Ghost Wolf*/43725),
(@Entry,    7,      0,    /*Glyph of Thunderstorm*/44923),
(@Entry,    8,      0,    /*Glyph of Arcane Intellect*/43339),
(@Entry,    8,      0,    /*Glyph of Fire Ward*/43357),
(@Entry,    8,      0,    /*Glyph of Frost Armor*/43359),
(@Entry,    8,      0,    /*Glyph of Frost Ward*/43360),
(@Entry,    8,      0,    /*Glyph of the Penguin*/43361),
(@Entry,    8,      0,    /*Glyph of the Bear Cub*/43362),
(@Entry,    8,      0,    /*Glyph of Slow Fall*/43364),
(@Entry,    8,      0,    /*Glyph of Blast Wave*/44920),
(@Entry,    9,      0,    /*Glyph of Unending Breath*/43389),
(@Entry,    9,      0,    /*Glyph of Drain Soul*/43390),
(@Entry,    9,      0,    /*Glyph of Kilrogg*/43391),
(@Entry,    9,      0,    /*Glyph of Curse of Exhaustion*/43392),
(@Entry,    9,      0,    /*Glyph of Enslave Demon*/43393),
(@Entry,    9,      0,    /*Glyph of Souls*/43394),
(@Entry,    10,     0,    /*Glyph of Aquatic Form*/43316),
(@Entry,    10,     0,    /*Glyph of Unburdened Rebirth*/43331),
(@Entry,    10,     0,    /*Glyph of Thorns*/43332),
(@Entry,    10,     0,    /*Glyph of Challenging Roar*/43334),
(@Entry,    10,     0,    /*Glyph of the Wild*/43335),
(@Entry,    10,     0,    /*Glyph of Dash*/43674),
(@Entry,    10,     0,    /*Glyph of Typhoon*/44922);

-- Reduce prices to buy 0 / sell 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` = @Entry;
