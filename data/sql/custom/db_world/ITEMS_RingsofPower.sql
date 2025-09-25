-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Custom 20 Rings of Power
-- -----------------------------------

-- Rings
-- -----------------------------------
SET
-- Red socket
@Ring1ID       = 46010,
@Ring1Spell    = 51463, -- Your auto attacks deal an additional 12% Shadow damage.
@Ring1Name     = 'Whispering Ring', @Ring1Subname = '',
@Ring2ID       = 50424,
@Ring2Spell    = 51885, -- Increases your Attack Power by 100% of your Intellect.
@Ring2Name     = 'Twist of Fate', @Ring2Subname = '',
@Ring3ID       = 51558,
@Ring3Spell    = 31841, -- Increases your spell power by 20% of your total Intellect.
@Ring3Name     = 'Mind\'s Eye', @Ring3Subname = '',
@Ring4ID       = 31921,
@Ring4Spell    = 15031, -- Increases your spell power by 25% of your total Spirit.
@Ring4Name     = 'Hand of the Prophet', @Ring4Subname = '',
@Ring5ID       = 47224,
@Ring5Spell    = 13964, -- Gives you a 5% chance to get an extra attack on the same target after hitting your target with your Sword or Axe.
@Ring5Name     = 'Blademaster\'s Band', @Ring5Subname = '',
@Ring6ID       = 33496,
@Ring6Spell    = 16284, -- Increases your attack speed by 30% for your next 3 swings after dealing a melee critical strike.
@Ring6Name     = 'Infinite Loop', @Ring6Subname = '',
@Ring7ID       = 50398,
@Ring7Spell    = 51688, -- Your critical strike damage is increased by 16% when the target has less health than you (as a percentage of total health).
@Ring7Name     = 'Mortal Coil', @Ring7Subname = '',
@Ring8ID       = 50614,
@Ring8Spell    = 20180, -- Gives you a 8% chance after being hit by any damaging attack that the next 4 weapon swings within 8 sec will generate an additional attack.
@Ring8Name     = 'Grand Executioner', @Ring8Subname = '',
-- Yellow socket
@Ring9ID       = 45608,
@Ring9Spell    = 31823, -- Reduces the duration of Curse, Disease and Poison effects by 30%.
@Ring9Name     = 'Pure Platinum Band', @Ring9Subname = '',
@Ring10ID      = 45871,
@Ring10Spell   = 31131, -- Reduces damage taken while affected by Stun and Fear effects by 30%.
@Ring10Name    = 'Unbreakable Will', @Ring10Subname = '',
@Ring11ID      = 45471,
@Ring11Spell   = 13789, -- Increases your Dodge chance by 6% and gives you 10% melee haste.
@Ring11Name    = 'Ring of the Maelstrom', @Ring11Subname = '',
@Ring12ID      = 45297,
@Ring12Spell   = 31830, -- All attacks against you have a 10% chance to cause half damage.
@Ring12Name    = 'Glimpse of Immortality', @Ring12Subname = '',
@Ring13ID      = 51001,
@Ring13Spell   = 58874, -- Whenever you take damage from or block a melee attack you cause damage equal to 20% of your block value.
@Ring13Name    = 'Pins and Needles', @Ring13Subname = '',
@Ring14ID      = 34230,
@Ring14Spell   = 50151, -- When you are hit by a spell, you have a 20% chance to boost your resistance to that type of magic for 18 sec. Stacks up to 3 times.
@Ring14Name    = 'Ring of Safe Havens', @Ring14Subname = '',
-- Blue socket
@Ring15ID      = 34837,
@Ring15Spell   = 33956, -- Regenerate mana equal to 10% of your Intellect every 5 sec, even while casting.
@Ring15Name    = 'Lifestream Band', @Ring15Subname = '',
@Ring16ID      = 33498,
@Ring16Spell   = 29076, -- Your spell criticals will refund 30% of their base mana cost.
@Ring16Name    = 'Emerald Dreamcatcher', @Ring16Subname = '',
@Ring17ID      = 45326,
@Ring17Spell   = 47511, -- Critical heals create a protective shield on the target, absorbing 20% of the amount healed. Lasts 12 sec.
@Ring17Name    = 'Guiding Light', @Ring17Subname = '',
@Ring18ID      = 47700,
@Ring18Spell   = 47560, -- Increases healing by 12% on friendly targets at or below 50% health.
@Ring18Name    = 'Saving Grace', @Ring18Subname = '',
@Ring19ID      = 34625,
@Ring19Spell   = 26169, -- 20% chance that your heals on others will also heal you 10% of the amount healed.
@Ring19Name    = 'Hope\'s Diamond', @Ring19Subname = '',
@Ring20ID      = 45157,
@Ring20Spell   = 16492, -- Regenerates 6% of your total Health over 6 sec after being the victim of a critical strike.
@Ring20Name    = 'Broken Promise', @Ring20Subname = '';

-- Clear blizzlike stats
UPDATE `item_template` 
SET 
`itemlevel` = 35,
`requiredlevel` = 0,
`bonding` = 0, 
`maxcount` = 1,
`flags` = 524288,
`flagsextra`= 0,
`buyprice` = 0,
`sellprice` = 0,
`armor` = 0,
`allowableclass` = -1,
`allowablerace` = -1,
`requiredreputationfaction` = 0,
`requiredreputationrank` = 0,
`stat_type1` = 0, `stat_value1` = 0,
`stat_type2` = 0, `stat_value2` = 0,
`stat_type3` = 0, `stat_value3` = 0,
`stat_type4` = 0, `stat_value4` = 0,
`stat_type5` = 0, `stat_value5` = 0,
`stat_type6` = 0, `stat_value6` = 0,
`spellid_1` = 0, 
`spellid_2` = 0, 
`spellid_3` = 0
WHERE `entry` IN (@Ring1ID,@Ring2ID,@Ring3ID,@Ring4ID,@Ring5ID,@Ring6ID,@Ring7ID,@Ring8ID,@Ring9ID,@Ring10ID,@Ring11ID,@Ring12ID,@Ring13ID,@Ring14ID,@Ring15ID,@Ring16ID,@Ring17ID,@Ring18ID,@Ring19ID,@Ring20ID);

-- Ring spells
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring1Name,  `description`= @Ring1Subname,  `spellid_1`= @Ring1Spell  WHERE `entry` = @Ring1ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring2Name,  `description`= @Ring2Subname,  `spellid_1`= @Ring2Spell  WHERE `entry` = @Ring2ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring3Name,  `description`= @Ring3Subname,  `spellid_1`= @Ring3Spell  WHERE `entry` = @Ring3ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring4Name,  `description`= @Ring4Subname,  `spellid_1`= @Ring4Spell  WHERE `entry` = @Ring4ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring5Name,  `description`= @Ring5Subname,  `spellid_1`= @Ring5Spell  WHERE `entry` = @Ring5ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring6Name,  `description`= @Ring6Subname,  `spellid_1`= @Ring6Spell  WHERE `entry` = @Ring6ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring7Name,  `description`= @Ring7Subname,  `spellid_1`= @Ring7Spell  WHERE `entry` = @Ring7ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring8Name,  `description`= @Ring8Subname,  `spellid_1`= @Ring8Spell  WHERE `entry` = @Ring8ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring9Name,  `description`= @Ring9Subname,  `spellid_1`= @Ring9Spell  WHERE `entry` = @Ring9ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring10Name, `description`= @Ring10Subname, `spellid_1`= @Ring10Spell WHERE `entry` = @Ring10ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring11Name, `description`= @Ring11Subname, `spellid_1`= @Ring11Spell WHERE `entry` = @Ring11ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring12Name, `description`= @Ring12Subname, `spellid_1`= @Ring12Spell WHERE `entry` = @Ring12ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring13Name, `description`= @Ring13Subname, `spellid_1`= @Ring13Spell WHERE `entry` = @Ring13ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring14Name, `description`= @Ring14Subname, `spellid_1`= @Ring14Spell WHERE `entry` = @Ring14ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring15Name, `description`= @Ring15Subname, `spellid_1`= @Ring15Spell WHERE `entry` = @Ring15ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring16Name, `description`= @Ring16Subname, `spellid_1`= @Ring16Spell WHERE `entry` = @Ring16ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring17Name, `description`= @Ring17Subname, `spellid_1`= @Ring17Spell WHERE `entry` = @Ring17ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring18Name, `description`= @Ring18Subname, `spellid_1`= @Ring18Spell WHERE `entry` = @Ring18ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring19Name, `description`= @Ring19Subname, `spellid_1`= @Ring19Spell WHERE `entry` = @Ring19ID;
UPDATE `item_template` SET `socketContent_1`= 1, `spelltrigger_1`=1, `name`= @Ring20Name, `description`= @Ring20Subname, `spellid_1`= @Ring20Spell WHERE `entry` = @Ring20ID;

-- Socket + bonus
-- Ring 3
UPDATE `item_template` SET `socketColor_1` = 4, `socketBonus`  = 3353   -- +8 Intellect
WHERE `spellid_1` = @Ring3Spell; -- Increases your spell power by 20% of your total Intellect
-- Ring 4
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3352   -- +8 Spirit
WHERE `spellid_1` = @Ring4Spell; -- Increases your spell power by 25% of your total Spirit
-- Ring 18
UPDATE `item_template` SET `socketColor_1` = 4, `socketBonus`  = 3303   -- +8 Haste Rating
WHERE `spellid_1` = @Ring18Spell; -- Increases healing by 12% on friendly targets at or below 50% health
-- Ring 19
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 3766   -- +12 Stamina
WHERE `spellid_1` = @Ring19Spell; -- 20% chance that your heals on others will also heal you 10% of the amount healed
-- Ring 1
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3882   -- +8 Armor Penetration
WHERE `spellid_1` = @Ring1Spell; -- Your auto attacks deal an additional 12% Shadow damage
-- Ring 2
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 3877   -- +16 Attack Power
WHERE `spellid_1` = @Ring2Spell; -- Increases your Attack Power by 100% of your Intellect
-- Ring 5
UPDATE `item_template` SET `socketColor_1` = 4, `socketBonus`  = 2844   -- +8 Hit Rating
WHERE `spellid_1` = @Ring5Spell; -- Gives you a 5% chance to get an extra attack on the same target after hitting with a Sword or Axe
-- Ring 6
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3314   -- +8 Critical Strike Rating
WHERE `spellid_1` = @Ring6Spell; -- Increases your attack speed by 30% for your next 3 swings after dealing a melee critical strike
-- Ring 11
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3360   -- +8 Parry Rating
WHERE `spellid_1` = @Ring11Spell; -- Increases your Dodge chance by 6% and gives you 10% melee haste
-- Ring 7
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 3778   -- +8 Expertise Rating
WHERE `spellid_1` = @Ring7Spell; -- Your critical strike damage is increased by 20% when the target has less health than you
-- Ring 8
UPDATE `item_template` SET `socketColor_1` = 4, `socketBonus`  = 3303   -- +8 Haste Rating
WHERE `spellid_1` = @Ring8Spell; -- 8% chance after being hit by any damaging attack that the next 4 weapon swings will generate an additional attack
-- Ring 15
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 2392   -- +12 Mana per 5 sec
WHERE `spellid_1` = @Ring15Spell; -- Regenerate mana equal to 10% of your Intellect every 5 sec, even while casting
-- Ring 16
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3314   -- +8 Critical Strike Rating
WHERE `spellid_1` = @Ring16Spell; -- Your spell criticals will refund 30% of their base mana cost
-- Ring 17
UPDATE `item_template` SET `socketColor_1` = 4, `socketBonus`  = 3753   -- +9 Spell Power
WHERE `spellid_1` = @Ring17Spell; -- Critical heals create a protective shield absorbing 20% of the amount healed for 12 sec
-- Ring 10
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 3821   -- +8 Resilience Rating
WHERE `spellid_1` = @Ring10Spell; -- Reduces damage taken while affected by Stun and Fear effects by 30%
-- Ring 9
UPDATE `item_template` SET `socketColor_1` = 4, `socketBonus`  = 3766   -- +12 Stamina
WHERE `spellid_1` = @Ring9Spell; -- Reduces the duration of Curse, Disease and Poison effects by 30%
-- Ring 12
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 3302   -- +8 Defense Rating
WHERE `spellid_1` = @Ring12Spell; -- All attacks against you have a 10% chance to cause half damage
-- Ring 13
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3363   -- +9 Block Value
WHERE `spellid_1` = @Ring13Spell; -- Whenever you take damage from or block a melee attack you cause damage equal to 20% of your block value
-- Ring 14
UPDATE `item_template` SET `socketColor_1` = 2, `socketBonus`  = 3821   -- +8 Resilience Rating
WHERE `spellid_1` = @Ring14Spell; -- 20% chance when hit by a spell to boost your resistance to that school for 18 sec, stacks 3 times
-- Ring 20
UPDATE `item_template` SET `socketColor_1` = 8, `socketBonus`  = 3766   -- +12 Stamina
WHERE `spellid_1` = @Ring20Spell; -- Regenerates 6% of your total Health over 6 sec after being the victim of a critical strike
