-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom Darkmoon Cards
-- -----------------------------------

-- General edits
-- -----------------------------------
-- Trinkets
UPDATE item_template SET `bonding` = 2, `buyprice` = 0, `quality`=4, `buyprice`=0, `requireddisenchantskill`=0, `disenchantid`=0, `sellprice` = 0, `class`=4, `subclass`=0, `allowablerace`=-1, `inventorytype`=12, `spellcooldown_1`=-1, `spellcategorycooldown_1`=-1, `spellcooldown_2`=-1, `spellcategorycooldown_2`=-1, `ItemLevel` = 30, `requiredlevel` = 0, `stat_type1` = 7, `stat_value1` = 10, `Flags` = 524352 WHERE `entry` IN (42988,47661,47664,40707,45145,29388,33828,38362,45436,19288,47662,31856,38364,31857,37574,42990,38363,19289,19287,31858,31859,19290,28065,40337,30841);
-- Decks
UPDATE item_template SET `bonding` = 0, `maxcount` = 1, `buyprice` = 0, `sellprice` = 1000000,  `ItemLevel` = 30, `requiredlevel` = 20 WHERE `entry` IN (44326,44259,31890,31914,19228,19267,19277,31891,19257,44294,31907);
-- Cards
UPDATE item_template SET `bonding` = 0, `maxcount` = 0, `buyprice` = 0, `sellprice` = 50000,  `ItemLevel` = 30, `requiredlevel` = 0 WHERE `entry` IN (19259,19260,19261,19262,19263,19264,19265,19276,19278,19279,19280,19281,19282,19283,19284,31882,31883,31884,31885,31886,31887,31888,31889,31910,31911,31912,31913,31915,31916,31917,31918,44260,44261,44262,44263,44264,44265,44266,44267,19268,19269,19270,19271,19272,19273,19274,19275,44286,44287,44288,44289,44290,44291,44292,44293,31892,31893,31894,31895,31896,31898,31899,31900,44268,44269,44270,44271,44272,44273,44274,44275,19227,19230,19231,19232,19233,19234,19235,19236,31901,31902,31903,31904,31905,31906,31908,31909);

-- Card Spells
SET
@DruidSpell1  = 37316,  -- When you shift out of Bear Form, Dire Bear Form, or Cat Form, your next Regrowth spell takes 2 fewer sec. to cast.
@DruidSpell2  = 0,  -- 
@DruidName    = 'Darkmoon Card: Vision',
@PriestSpell1 = 33150,  -- Your spell criticals have a 25% chance to cause your next Smite or Flash Heal spell to be instant cast, cost no mana but be incapable of a critical hit. This effect lasts 10 sec.
@PriestSpell2 = 0,  -- 
@PriestName   = 'Darkmoon Card: Confessor',
@RogueSpell1  = 51672,  -- Whenever you dodge an attack you gain an Unfair Advantage, striking back for 50% of your main hand weapon's damage. This cannot occur more than once per second.
@RogueSpell2  = 0,  -- 
@RogueName    = 'Darkmoon Card: Menace',
@MageSpell1   = 22007,  -- 10% chance after casting Arcane Missiles, Fireball, or Frostbolt that your next spell with a casting time under 10 seconds cast instantly.
@MageSpell2   = 0,  -- 
@MageName     = 'Darkmoon Card: Nexus',
@ShamanSpell1 = 38443,  -- Whenever you have an air totem, an earth totem, a fire totem, and a water totem active at the same time, you gain 19 mana per 5 sec, 10% spell critical strike rating, and 45 spell power.
@ShamanSpell2 = 0,  --
@ShamanName   = 'Darkmoon Card: Harmony',
@WarriorSpell1= 57499,  -- Your Charge, Intercept and Intervene abilities are now usable while in combat and in any stance. In addition, your Intervene ability will remove all movement impairing effects.
@WarriorSpell2= 0,  -- 
@WarriorName  = 'Darkmoon Card: Warpath',
@PaladinSpell1= 53556,  -- Increases the range of your Judgement of Light and Judgement of Wisdom spells by 15 yards and increases your chance to hit by 2%.
@PaladinSpell2= 0,  -- 
@PaladinName  = 'Darkmoon Card: Avenger',
@HunterSpell1 = 56317,  -- Increases your pet's damage by 16% and you and your pet's movement speed by 8% while your pet is active. This does not stack with other movement speed increasing effects.
@HunterSpell2 = 0,  -- 
@HunterName   = 'Darkmoon Card: Instinct',
@WarlockSpell1= 21741,  -- Your pet gains 15 stamina and 100 spell resistance against all schools of magic.
@WarlockSpell2= 0,  -- 
@WarlockName  = 'Darkmoon Card: Ritual';

-- Trinkets
UPDATE `item_template` SET `quality`=4,`spellid_1`=@DruidSpell1,`spellid_2`=@DruidSpell2,`name`=@DruidName,`AllowableClass`=1024,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=1 WHERE `entry`=42988;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@PriestSpell1,`spellid_2`=@PriestSpell2,`name`=@PriestName,`AllowableClass`=16,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=31856;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@RogueSpell1,`spellid_2`=@RogueSpell2,`name`=@RogueName,`AllowableClass`=8,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=31859;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@MageSpell1,`spellid_2`=@MageSpell2,`name`=@MageName,`AllowableClass`=128,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=19288;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@ShamanSpell1,`spellid_2`=@ShamanSpell2,`name`=@ShamanName,`AllowableClass`=64,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=19289;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@WarriorSpell1,`spellid_2`=@WarriorSpell2,`name`=@WarriorName,`AllowableClass`=1,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=31857;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@PaladinSpell1,`spellid_2`=@PaladinSpell2,`name`=@PaladinName,`AllowableClass`=2,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=19287;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@HunterSpell1,`spellid_2`=@HunterSpell2,`name`=@HunterName,`AllowableClass`=4,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=42990;
UPDATE `item_template` SET `quality`=4,`spellid_1`=@WarlockSpell1,`spellid_2`=@WarlockSpell2,`name`=@WarlockName,`AllowableClass`=256,`spelltrigger_1`=1,`spelltrigger_2`=1,`spellid_3`=0,`spelltrigger_3`=0 WHERE `entry`=19290;

-- Decks
UPDATE `item_template` SET `name` = 'Dreams Deck',     `quality`=4, `startquest`=13327, `AllowableClass` = 1024 WHERE `entry` = 44259;
UPDATE `item_template` SET `name` = 'Blessings Deck',  `quality`=4, `startquest`=10938, `AllowableClass` = 16   WHERE `entry` = 31890;
UPDATE `item_template` SET `name` = 'Lunacy Deck',     `quality`=4, `startquest`=10941, `AllowableClass` = 8    WHERE `entry` = 31914;
UPDATE `item_template` SET `name` = 'Prisms Deck',     `quality`=4, `startquest`=13324, `AllowableClass` = 128  WHERE `entry` = 19228;
UPDATE `item_template` SET `name` = 'Elementals Deck', `quality`=4, `startquest`=7929,  `AllowableClass` = 64   WHERE `entry` = 19267;
UPDATE `item_template` SET `name` = 'Undeath Deck',    `quality`=4, `startquest`=7927,  `AllowableClass` = 256  WHERE `entry` = 19277;
UPDATE `item_template` SET `name` = 'Storms Deck',     `quality`=4, `startquest`=10939, `AllowableClass` = 1    WHERE `entry` = 31891;
UPDATE `item_template` SET `name` = 'Warlords Deck',   `quality`=4, `startquest`=7928,  `AllowableClass` = 2    WHERE `entry` = 19257;
UPDATE `item_template` SET `name` = 'Beasts Deck',     `quality`=4, `startquest`=7907,  `AllowableClass` = 4    WHERE `entry` = 44294;
UPDATE `item_template` SET `name` = 'Furies Deck',     `quality`=4, `startquest`=10940, `AllowableClass` = 32   WHERE `entry` = 31907;

-- Quests
UPDATE `quest_template` SET `LogTitle`='Darkmoon Undeath Deck',    `startitem`=19277, `rewarditem1`=19290, `rewardamount1`=1, `LogDescription`= 'Bring the Undeath Deck to Professor Thaddeus Paleo in the Hall of Champions.',     `QuestDescription`='Now that you have gathered all of the Undeath cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',   `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 7927;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Warlords Deck',   `startitem`=19257, `rewarditem1`=19287, `rewardamount1`=1, `LogDescription`= 'Bring the Nobles Deck to Professor Thaddeus Paleo in the Hall of Champions.',      `QuestDescription`='Now that you have gathered all of the Nobles cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',    `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 7928;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Prisms Deck',     `startitem`=19228, `rewarditem1`=19288, `rewardamount1`=1, `LogDescription`= 'Bring the Prisms Deck to Professor Thaddeus Paleo in the Hall of Champions.',      `QuestDescription`='Now that you have gathered all of the Prism cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',     `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 13324;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Lunacy Deck',     `startitem`=31914, `rewarditem1`=31859, `rewardamount1`=1, `LogDescription`= 'Bring the Lunacy Deck to Professor Thaddeus Paleo in the Hall of Champions.',      `QuestDescription`='Now that you have gathered all of the Lunacy cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',    `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 10941;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Furies Deck',     `startitem`=31907, `rewarditem1`=31858, `rewardamount1`=1, `LogDescription`= 'Bring the Furies Deck to Professor Thaddeus Paleo in the Hall of Champions.',      `QuestDescription`='Now that you have gathered all of the Furies cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',    `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 10940;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Storms Deck',     `startitem`=31891, `rewarditem1`=31857, `rewardamount1`=1, `LogDescription`= 'Bring the Storms Deck to Professor Thaddeus Paleo in the Hall of Champions.',      `QuestDescription`='Now that you have gathered all of the Storms cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',    `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 10939;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Blessings Deck',  `startitem`=31890, `rewarditem1`=31856, `rewardamount1`=1, `LogDescription`= 'Bring the Blessings Deck to Professor Thaddeus Paleo in the Hall of Champions.',   `QuestDescription`='Now that you have gathered all of the Blessings cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.', `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 10938;
UPDATE `quest_template` SET `LogTitle`='Darkmoon Elementals Deck', `startitem`=19267, `rewarditem1`=19289, `rewardamount1`=1, `LogDescription`= 'Bring the Elementals Deck to Professor Thaddeus Paleo in the Hall of Champions.',  `QuestDescription`='Now that you have gathered all of the Elemental cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.', `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 7929; 
UPDATE `quest_template` SET `LogTitle`='Darkmoon Dreams Deck',     `startitem`=44259, `rewarditem1`=42988, `rewardamount1`=1, `LogDescription`= 'Bring the Dreams Deck to Professor Thaddeus Paleo in the Hall of Champions.',      `QuestDescription`='Now that you have gathered all of the Dream cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',     `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 13327; 
UPDATE `quest_template` SET `LogTitle`='Darkmoon Beast Deck',      `startitem`=44294, `rewarditem1`=42990, `rewardamount1`=1, `LogDescription`= 'Bring the Beast Deck to Professor Thaddeus Paleo in the Hall of Champions.',       `QuestDescription`='Now that you have gathered all of the Beast cards together into a deck, a ninth card mysteriously appears with the same backing as the first eight. On this card is inscribed, "Return this deck of cards to the Darkmoon Faire and be rewarded."$b$bYou have heard that a representative from the Faire is currently visiting the Hall of Champions, maybe they can tell you more.',     `QuestCompletionLog`= 'Return to Professor Thaddeus Paleo in the Hall of Champions.'  WHERE `ID` = 7907; 
UPDATE `quest_offer_reward` SET `Emote1`= 1, `Emote2`= 1, `RewardText`='Your gesture of returning these cards to us will not soon be forgotten, $N. Allow me to present you with one of the greater Darkmoon cards as a small token of my appreciation.' WHERE `ID` IN (13327,7928,13325,13324,10941,10940,10939,10938,7929,19287,7927);
UPDATE `quest_template` SET `questlevel` = 80, `rewardchoiceitemid1`=0, `rewardchoiceitemid2`=0, `rewardchoiceitemid3`=0, `rewardchoiceitemid4`=0 WHERE `startitem` IN (44326,44259,31890,31914,19228,19267,19277,31891,19257,44294,31907);
UPDATE `quest_template` SET `RewardChoiceItemID1`=42987, `RewardChoiceItemID2`=44254, `RewardChoiceItemID3`=44253, `RewardChoiceItemID4`=44255 WHERE `ID`=13326;

-- Lesser Cards
-- -----------------------------------
-- Priest
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 16 WHERE `entry` IN (31882,31883,31884,31885,31886,31887,31888,31889);
-- Rogue
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 8 WHERE `entry` IN (31910,31911,31912,31913,31915,31916,31917,31918);
-- Mage
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 128 WHERE `entry` IN (44260,44261,44262,44263,44264,44265,44266,44267);-- Elementals -- Shaman
-- Shaman
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 64 WHERE `entry` IN (19268,19269,19270,19271,19272,19273,19274,19275);
-- Warlock
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 256 WHERE `entry` IN (44286,44287,44288,44289,44290,44291,44292,44293);
-- Warrior
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 1 WHERE `entry` IN (31892,31893,31894,31895,31896,31898,31899,31900);
-- Paladin
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 2 WHERE `entry` IN (19258,19259,19260,19261,19262,19263,19264,19265);
-- Hunter
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 4 WHERE `entry` IN (19227,19230,19231,19232,19233,19234,19235,19236);
-- Druid
UPDATE `item_template` SET `quality` = 3, `allowableclass` = 1024, `name` =
CASE    `entry`
    WHEN 19276 THEN 'Ace of Dreams'
    WHEN 19278 THEN 'Two of Dreams'
    WHEN 19279 THEN 'Three of Dreams'
    WHEN 19280 THEN 'Four of Dreams'
    WHEN 19281 THEN 'Five of Dreams'
    WHEN 19282 THEN 'Six of Dreams'
    WHEN 19283 THEN 'Seven of Dreams'
    WHEN 19284 THEN 'Eight of Dreams'
END
WHERE `entry` IN (19276,19278,19279,19280,19281,19282,19283,19284);
