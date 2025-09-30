-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater quest templates
-- -----------------------------------

-- Motes only drop while quest is active
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (575) AND `SourceEntry`=22574 AND `ConditionTypeOrReference`=9;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 575, 22574, 0, 0, 9, 0, 42315, 0, 0, 0, 0, 0, '', 'Mote of Fire (22574) only drops from Fire Elemental (575) while on quest (42315) ');
UPDATE `creature_loot_template` SET `Chance`=100 WHERE `Item`=22574;
-- Mote of Water
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (17917) AND `SourceEntry`=22578 AND `ConditionTypeOrReference`=9;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 17917, 22578, 0, 0, 9, 0, 42312, 0, 0, 0, 0, 0, '', 'Mote of Water (22578) only drops from Water Elemental (17917) while on quest (42312) ');
UPDATE `creature_loot_template` SET `Chance`=100 WHERE `Item`=22578;
-- Mote of Air
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (28384) AND `SourceEntry`=22572 AND `ConditionTypeOrReference`=9;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 28384, 22572, 0, 0, 9, 0, 42313, 0, 0, 0, 0, 0, '', 'Mote of Air (22572) only drops from Air Elemental (28384) while on quest (42313) ');
UPDATE `creature_loot_template` SET `Chance`=100 WHERE `Item`=22572;
-- Mote of Earth
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (7765) AND `SourceEntry`=22573 AND `ConditionTypeOrReference`=9;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 7765, 22573, 0, 0, 9, 0, 42314, 0, 0, 0, 0, 0, '', 'Mote of Earth (22573) only drops from Earth Elemental (7765) while on quest (42314) ');
UPDATE `creature_loot_template` SET `Chance`=100 WHERE `Item`=22573;
-- Mote of shadow
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (17014,17981,18870,16974,18869) AND `SourceEntry`=22577 AND `ConditionTypeOrReference`=9;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 17014, 22577, 0, 0, 9, 0, 42316, 0, 0, 0, 0, 0, '', 'Mote of Shadow (22577) only drops from (17014) while on quest (42316) ');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 17981, 22577, 0, 0, 9, 0, 42316, 0, 0, 0, 0, 0, '', 'Mote of Shadow (22577) only drops from (17981) while on quest (42316) ');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 18870, 22577, 0, 0, 9, 0, 42316, 0, 0, 0, 0, 0, '', 'Mote of Shadow (22577) only drops from (18870) while on quest (42316) ');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 16974, 22577, 0, 0, 9, 0, 42316, 0, 0, 0, 0, 0, '', 'Mote of Shadow (22577) only drops from (16974) while on quest (42316) ');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2` , `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 18869, 22577, 0, 0, 9, 0, 42316, 0, 0, 0, 0, 0, '', 'Mote of Shadow (22577) only drops from (18869) while on quest (42316) ');
UPDATE `creature_loot_template` SET `Chance`=100 WHERE `Item`=22577;

-- Questgivers
SET 
@Commander_Gara         = 482201,
@Purveyor_Delryn        = 482202,
@Farseer_Serena         = 482203,
@Spymaster_Jarre        = 482204,
@Forward_Scout_Razza    = 482205,
-- Quest rewards
@HonorCoin              = 37836,
@FieldSupplies          = 20602,
@MysteryBox             = 41426,
@NormalQuest_Gold       = 50000,
@NormalQuest_HonorCoins = 3,
@EliteQuest_Gold        = 250000,
@EliteQuest_HonorCoins  = 10;

-- Quest templates
SET
@ID                         = 42111,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Purveyor_Delryn, /* Loremaster Delryn */
@QuestEnder                 = @Purveyor_Delryn, /* Loremaster Delryn */

@QuestType                  = 0, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 0, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'Azshara Crater',
@QuestDescription           = '',
@LogDescription             = '',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = '',
@RequestItems               = '',
@OfferReward                = 'The law cannot not protect you here. It would be wise to prepare before venturing forth.$b$b(This is a FFA PvP area.)',

@RewardItem1                = 0,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = 0,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = 0,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 0,
@RewardFactionOverride1     = 0;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@LogDescription,@QuestDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Gorlic Fin */
SET
@ID                         = 42301,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Off the Hook',
@LogDescription             = 'Those damned Gorlocs. I just want to do a little fishing but they won\'t leave me alone for 5 minutes!$b$bSay... you\'re tough enough to make it past the ogres, do you think you could thin the herd for me?',
@QuestDescription           = 'Spymaster Jarre wants you to slay the Gorlocs inhabiting the nearby river. Bring her their fins as proof.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'How did it go?',
@OfferReward                = 'Great job! Here\'s a little something for your troubles.',

@RewardItem1                = @HonorCoin,            @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 5784,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 20,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Grovestalker Pelt */
SET
@ID                         = 42302,

@PreviousQuest              = 42111,
@RewardNextQuest            = 0,

@QuestStarter               = @Purveyor_Delryn, /* Loremaster */
@QuestEnder                 = @Purveyor_Delryn, /* Loremaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Stalking the Stalkers',
@LogDescription           = 'The giant cats prowling this crater have a wonderfuly soft and exotic fur. A bundle of their pelts would demand a high price on the open market.$b$bAre you brave enough to stalk the stalkers, $N? Bring me some and I will reward you handsomely for your efforts.',
@QuestDescription             = 'Loremaster Vyrin wants you to collect 5 Pristine Lynx Pelts from the Grovestalker Lynx inhabiting Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Loremaster Vyrin.',
@RequestItems               = 'How goes the hunt, $r?',
@OfferReward                = 'Splended! These pelts are in immaculate condition.$b$bYour payment, as promised.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 4742,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 5,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Vulture Talon */
SET
@ID                         = 42303,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Forward_Scout_Razza, /* Forward Scout */
@QuestEnder                 = @Forward_Scout_Razza, /* Forward Scout */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Buzz Off!',
@LogDescription           = 'The buzzards in da field be harassin our scouts every time dey go south, but a $c like yaself should \'ave no problem in dealin\' wit\' a few birds, ya?.$b$bTake care of \'em for Razza.',
@QuestDescription             = 'Forward Scout Razza wants you to kill Buzzards in central Azshara Crater. Bring him their talons as proof.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Forward Scout Razza.',
@RequestItems               = 'Have ya taken care a dem vultures?',
@OfferReward                = 'The Expedition tanks ya for ya service, $r.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 5064,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 8,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Polished Naga Scale */
SET
@ID                         = 42304,

@PreviousQuest              = 42111,
@RewardNextQuest            = 0,

@QuestStarter               = @Purveyor_Delryn, /* Loremaster */
@QuestEnder                 = @Purveyor_Delryn, /* Loremaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'The Serpent Shrine',
@LogDescription             = 'Naga scalemail isn\'t the hardest armor, but it is some of the most profitable. As it happens, the vicious serpents have been swarming around the ruins to the south and I would like to know why.$b$bBring me a generous amount of their scales, $n, and I will see to it that you are rewarded.',
@QuestDescription           = 'Loremaster Vyrin wants you to collect Polished Naga Scales from the naga around the ruins in the central field of Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Loremaster Vyrin.',
@RequestItems               = 'Have you collected the scales?',
@OfferReward                = 'Yes, these should do nicely! Fine work, $N.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 12923,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 30,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Malformed Satyr Horn */
SET
@ID                         = 42305,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Forward_Scout_Razza, /* ForwardScout */
@QuestEnder                 = @Forward_Scout_Razza, /* ForwardScout */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'A Blight Upon the Land',
@LogDescription           = 'So ya wanna do Razza a favor mon? Dere\'s a Satyr camp to de south an\' ah can smell de foul t\'ings from \'ere. Rid de land of \'em brotha an\' make sure ya bring me a couple horns as proof a whatchu\' been doin\'.$b$bRazzas got a big reward for when you get back, ya?',
@QuestDescription          = 'Forward Scout Razza wants you to kill Satyrs to the south of his tower. Bring him their horns as proof.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Forward Scout Razza.',
@RequestItems               = 'How\'s it goin mon?',
@OfferReward                = 'Haha, good job mon! De satyrs be tinkin\' twice \'bout messin wit\' ol Razza now!',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 38512,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 15,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Redfang Ritual Totem */
SET
@ID                         = 42306,

@PreviousQuest              = 0,
@RewardNextQuest            = 42332,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'Unnatural Selection',
@LogDescription           = 'Have you seen the furbolgs nearby? They\'re unusually aggressive and I noticed a few carrying totems that do not resemble their usual tribal artifacts.$b$bI need you to collect a few of those totems for me to study. With any luck we can figure out what\'s going on.',
@QuestDescription          = 'Farseer Serena wants you to collect totems from the Redfang furbolg of central Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'I know the deed is grim, but this must be done.',
@OfferReward                = 'I will see to it that their spirits are honored.$b$bThank you $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 20741,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 10,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Bloodied Wolvar Paw */
SET
@ID                         = 42307,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Claw Collection',
@LogDescription          = 'The wolvar burrow to the northwest could use some clearing out if you feel up to it. I think I can rustle up a little reward for when you get back.',
@QuestDescription         = 'Spymaster Jarre wants you to slay Ragepaw wolvar and bring back their paws as proof.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'Judging by the amount of blood on your shoes, I\'ll assume it went well?',
@OfferReward                = 'Here\'s that reward I promised. Thanks for helping keeping my station clear.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 4758,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 20,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Harpy Feather */
SET
@ID                         = 42308,

@PreviousQuest              = 42111,
@RewardNextQuest            = 0,

@QuestStarter               = @Purveyor_Delryn, /* Loremaster */
@QuestEnder                 = @Purveyor_Delryn, /* Loremaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Feather Fever',
@LogDescription          = 'Did you know Harpy Feathers can grow up to 24 inches in length? Just imagine a cloak made from tail feathers, or a robe! I must have them $n.$b$bGo to the canyon to the south, the harpies can be found among the cliffs.',
@QuestDescription         = 'Loremaster Vyrin wants Harpy Feathers. You can find them in the mountains of southern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Loremaster Vyrin.',
@RequestItems               = 'Have you collected those harpy feathers?',
@OfferReward                = 'Excellent, $n! Your payment, as agreed upon.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 4753,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 20,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Ogre Warbeads */
SET
@ID                         = 42309,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Making Warcraft',
@LogDescription          = 'The main threat in this area is the ogre presence to the northeast. I\'m sure you had to fight a few of them to get here? Well, the situation is worse than it looks.$b$bAny assistance you can offer would be apreciated. The expedition is well funded, we can compensate you for your struggles.',
@QuestDescription         = 'Spymaster Jarre wants you to slay ogres in north-eastern Azshara Crater and collect their warbeads.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'How goes the ogre slaying?',
@OfferReward                = 'I could hear them dropping from here! Good work, $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 21982,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 20,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Raptor Egg */
SET
@ID                         = 917,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'A Delicious Feast',
@LogDescription           = 'I want you to steal... raptor eggs.$b$bThey\'ve got to be worth a fortune, enough to fund this expedition for ten more years! If not, at least we can have some dinner.$b$bNow get out there and get me those eggs!',
@QuestDescription          = 'Commander Gara wants you to steal some raptor eggs. They can be found in the swamps of Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'Do you have those eggs?',
@OfferReward                = 'I must say I\'m impressed they\'re still intact! Well done, $c.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 46364,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 6,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Thick Crocolisk Hide */
SET
@ID                         = 42311,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'The Jungle Has Teeth',
@LogDescription           = 'The crocs took three of my men during the night and now the rest are growing insububordinate out of fear! Pah. I need somebody with a spine to go out there and chop a few crocs.$b$bWhile you\'re at it you may as well bring me back their hides. Crocolisk skin makes a good pair of slacks.',
@QuestDescription          = 'Commander Gara wants you to slay the crocolisks inhabiting the swamp and bring back some of their hides.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'Have you taken care of those crocs?',
@OfferReward                = 'Well done!$b$bHere, we confiscated this from the last guy I sent out on that quest.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 3348,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 12,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Mote of Water */
SET
@ID                         = 42312,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Quelling the Elements: Water',
@LogDescription           = 'Do you feel it, $c? The balance of nature is disrupted in this place. Something has changed but I cannot determine what.$b$bIf the spirits will not commune with me willingly, then we must study them by force. Collect samples from the water elementals in central and southern Azshara Crater and combine them into a Primal Water before the motes fade away.',
@QuestDescription          = 'Farseer Serena wants you to collect Motes of Water and form them into a Primal Water before returning to her.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'Have you found success, $n?',
@OfferReward                = 'This will prove invaluable in understanding the nature of this place. Well done, $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 22578,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 1,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 21885,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Mote of Air */
SET
@ID                         = 42313,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Quelling the Elements: Air',
@LogDescription          = 'Do you feel it, $c? The balance of nature is disrupted in this place. Something has changed but I cannot determine what.$b$bIf the spirits will not commune with me willingly, then we must study them by force. Gather Motes of Air from the air elementals in southern Azshara Crater and combine them into a Primal Air before the motes fade away.',
@QuestDescription         = 'Farseer Serena wants you to collect Motes of Air and form them into a Primal Air before returning to her.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'Have you found success, $n?',
@OfferReward                = 'This will prove invaluable in understanding the nature of this place. Well done, $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 22572,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 1,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 22451,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Mote of Earth */
SET
@ID                         = 42314,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 2,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Quelling the Elements: Earth',
@LogDescription            = 'Do you feel it, $c? The balance of nature is disrupted in this place. Something has changed but I cannot determine what.$b$bIf the spirits will not commune with me willingly, then we must study them by force. Gather Motes of Earth from the giants in the swamp of Azshara Crater and combine them into a Primal Earth before the motes fade away.',
@QuestDescription           = 'Farseer Serena wants you to collect Motes of Earth and form them into a Primal Earth before returning to her.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'Have you found success, $n?',
@OfferReward                = 'This will prove invaluable in understanding the nature of this place. Well done, $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @FieldSupplies,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 1,               @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 22573,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 5,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 22452,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Mote of Fire */
SET
@ID                         = 42315,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Quelling the Elements: Fire',
@LogDescription            = 'Do you feel it, $c? The balance of nature is disrupted in this place. Something has changed but I cannot determine what.$b$bIf the spirits will not commune with me willingly, then we must study them by force. Gather Motes of Fire from the fire elementals in southern Azshara Crater and combine them into a Primal Fire before the motes fade away.',
@QuestDescription           = 'Farseer Serena wants you to collect Motes of Fire and form them into a Primal Fire before returning to her.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'Have you found success, $n?',
@OfferReward                = 'This will prove invaluable in understanding the nature of this place. Well done, $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 22574,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 1,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 21884,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Mote of Shadow */
SET
@ID                         = 42316,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 2,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Quelling the Elements: Shadow',
@LogDescription           = 'Do you feel it, $c? The balance of nature is disrupted in this place. Something has changed but I cannot determine what.$b$bIf the spirits will not commune with me willingly, then we must study them by force. Gather Motes of Shadow from the voidwalkers in the shadow temple of southern Azshara Crater and combine them into a Primal Shadow before the motes fade away.',
@QuestDescription          = 'Farseer Serena wants you to collect Motes of Shadow and form them into a Primal Shadow before returning to her.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'Have you found success, $n?',
@OfferReward                = 'This will prove invaluable in understanding the nature of this place. Well done, $n.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @FieldSupplies,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 1,               @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 22577,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 1,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 22456,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,             @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Enchanted Tiki Mask */
SET
@ID                         = 42317,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Enchanted Tiki Masks',
@LogDescription            = 'There\'s a witchdoctor in this swamp, $c, but I don\'t want you to kill him.$b$bWhat I want are his magic little puppets; the Enchanted Tiki Masks that guard his tent. If I had a few dozen of those things, I wouldn\'t have to drag these brainless oafs around.$b$bCollect a few and bring them back, would ya? I\'ll make it worth your while.',
@QuestDescription           = 'Commander Gara wants you to collect Enchanted Tiki Masks from around the witchdoctor\'s tent in the swamp.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'How\'d it go?',
@OfferReward                = 'Great job! Now I just need to figure out how to get them working again...',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 43670,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 5,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Petrified Ironbark */
SET
@ID                         = 42318,

@PreviousQuest              = 42111,
@RewardNextQuest            = 0,

@QuestStarter               = @Purveyor_Delryn, /* Loremaster */
@QuestEnder                 = @Purveyor_Delryn, /* Loremaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 2,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Natural Armor',
@LogDescription             = 'The Ancients in this Crater have incredibly hard bark. It would be the ideal material to craft some lightweight armor with.$b$bBring down a few of the giants and harvest them for me, $c. I will reward you handsomely for this task.',
@QuestDescription           = 'Loremaster Vyrin wants you to collect Petrified Ironbark from the Ancients wandering Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Loremaster Vyrin.',
@RequestItems               = 'How did it go?',
@OfferReward                = 'Perfect, $r! Please accept this as a token of my appreciation.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @FieldSupplies,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 1,               @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 36786,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 3,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Ancient Chimaera Horn */
SET
@ID                         = 42319,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 2,
@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'Chimaeron',
@LogDescription             = 'There\'s a monsterous chimera wandering the forests nearby but as you can see our available manpower is... low.$b$bIf you manage to slay the beast, bring me his horn and I\'ll reward you for your efforts.',
@QuestDescription           = 'Spymaster Jarre wants you to kill Chimaeron in northern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'Have you taken down the beast?',
@OfferReward                = 'Well done, $c! Please, take this and my thanks.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @FieldSupplies,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 1,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 33351,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Black Dragonscale */
SET
@ID                         = 42320,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Tip the Scales',
@LogDescription           = 'I can deal with crocolisks and raptors, but those dragonspawn nearby will burn this place to the ground if we don\'t do something about it.$b$bI need you to take care of them for me. Cut the slimy bastards down and collect a few handfuls of their scales while you\'re at it.',
@QuestDescription          = 'Commander Gara wants you to slay Dragonspawn in the swamps of Azshara Crater and return with their scales.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'Have you killed those dragonspawn yet?',
@OfferReward                = 'Well done, soldier! I\'ll be able to sell these scales to that perv Vyrin for a pretty copper.%b%bHere\'s your cut of course.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 15416,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 12,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Spirit Ash */
SET
@ID                         = 42321,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 2,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'The Exorcism',
@LogDescription             = 'The wolvar use the lowest level of their burrow as a communal graveyard. Unfortunately for them, the spirits of their deceased have now arisen.$b$bI need you to go down into the den and dispatch those ghosts, $n, but we\'re not doing this to help the wolvar. The magical ash they leave behind is what I\'m after.',
@QuestDescription           = 'Spymaster Jarre wants you to collect Spirit Ash from deep within the wolvar hold of northern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'Have you collected the ash, $n?',
@OfferReward                = 'Great job$b$bHere, you\'ve earned this!',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @FieldSupplies,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 1,               @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 20935,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 10,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* King Gorloc\'s Head */
SET
@ID                         = 42322,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 2,

@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'The Big One',
@LogDescription            = 'I thought I had those gorlocs on the back foot, now they\'ve declared some sort of king and are growing more confident by the hour.$b$bI need you to go down to the lake and take care of this for me, $c. You\'ll know when you see him, he\'s the big one.',
@QuestDescription           = 'Spymaster Jarre wants you to kill King Gorloc at his moonwell in northern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'Has it been done?',
@OfferReward                = 'You\'ve returned successful, and with a trophy! I\'m impressed, $c.$b$bHere you go, you\'ve earned this.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @FieldSupplies,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 1,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 3716,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Ogre Overlord\'s Head */
SET
@ID                         = 42323,

@PreviousQuest              = 42325,
@RewardNextQuest            = 0,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 4,
@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'The Warlord',
@LogDescription           = 'This is it, $n.$b$bYou\'ve taken down his scout and his tactician. Now we take the fight to Skullcrush.$b$bYou\'ll find him in his command center high on the cliffs to the northeast. Approach this fight with caution, $c. Skullcrush has guards, but he does not need them...$b$bGood luck.',
@QuestDescription          = 'Spymaster Jarre wants you to kill Warlord Skullcrush in northern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'Have you done it? Is the warlord dead?',
@OfferReward                = 'Your victory has cemented our foothold in the crater, $n. The expedition owes you a great debt.$b$bI will deliver news of this success to the top of my chain of command. I\'m sure someone will want to speak with you personally. In the meantime, please accept this as a token of our appreciation.',

@RewardItem1                = @MysteryBox,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = 1,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = @HonorCoin,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 3553,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Kill Watcher One-eye */
SET
@ID                         = 42324,

@PreviousQuest              = 42111,
@RewardNextQuest            = 42325,

@QuestStarter               = @Purveyor_Delryn, /* Loremaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 3,

@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'Piercing the Vale',
@LogDescription          = 'An ogre known as One-Eye watches over us from atop the gate to the north. It is in the Exepedition\'s best interest to eliminate this scout before the ogres grow bold enough to advance on our position here.$b$bIf you manage to bring him down, deliver news of your success to our Spymaster Jarre. She\'s stationed at the lake tower in the vale on the other side of the gate.',
@QuestDescription             = 'Loremaster Vyrin wants you to slay Watcher One-Eye. You can find him at the top of the gate leading into northern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Deliver news of your success to Spymaster Jarre in her tower in northern Azshara Crater.',
@RequestItems               = 'Who are you and how did you get past the ogres?',
@OfferReward                = 'So, you took down One-Eye? I must admit Vyrin has a keen eye for talent.$b$bPerhaps with you on our side we can bring an end to this little invasion.',

@RewardItem1                = @FieldSupplies,                @RequiredNpcOrGo1           = 14321,                @POIContinent               = 0,
@RewardAmount1              = 1,                @RequiredNpcOrGoCount1      = 1,                @POIx                       = 0,
@RewardItem2                = @HonorCoin,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Kill Cho'rush */
SET
@ID                         = 42325,

@PreviousQuest              = 42324,
@RewardNextQuest            = 42323,

@QuestStarter               = @Spymaster_Jarre, /* Spymaster */
@QuestEnder                 = @Spymaster_Jarre, /* Spymaster */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 3,
@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'Tactical Strike',
@LogDescription           = 'We need to take out the brains behind all this brawn before we can go after their leader.$b$bMokor the Tactician commands the bulk of the forces from atop his tower to the east. He is guarded, so bring friends.',
@QuestDescription          = 'Spymaster Jarre wants you to kill Mokor the Tactician at his tower in northern Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Spymaster Jarre.',
@RequestItems               = 'Have you defeated the tactician?',
@OfferReward                = 'Impressive! Perhaps now we will stand a chance against their warlord.',

@RewardItem1                = @FieldSupplies,                @RequiredNpcOrGo1           = 14324,                @POIContinent               = 0,
@RewardAmount1              = 1,                @RequiredNpcOrGoCount1      = 1,                @POIx                       = 0,
@RewardItem2                = @HonorCoin,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = @EliteQuest_HonorCoins,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Kill Daggermaw Raptors */
SET
@ID                         = 42326,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Clever Girls',
@LogDescription            = 'Our camp is under constant threat from the raptors that roam these swamps. We try to make as much noise as possible to keep them away, but it seems every night the smell of our campfire draws one in.$b$bDo us a favor and slay a few of those beasts, would ya? Maybe they\'ll find some other place to nest.',
@QuestDescription           = 'Commander Gara wants you to kill Daggermaw Raptors in the swamp of Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'Have you chickened out yet?',
@OfferReward                = 'I\'ll admit I\'m impressed. Not many people can stare down a fully-grown raptor and live to tell about it.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 20734,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 5,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 20751,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 3,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 20754,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 2,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Kill Shadowhide Gnolls */
SET
@ID                         = 42327,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Foreign Affairs',
@LogDescription            = 'Don\'t tell Serena but my party had to kill a few gnolls on the way here and I think I\'ve started some sort of rebellion. Now their soldiers are harassing our camp and setting traps... it\'s a real shit show.$b$bCan you go take care of this for me? Just take out a few of their higher-ups, I\'m sure the survivors will get the picture.',
@QuestDescription           = 'Commander Gara wants you to kill Ashmane Gnolls in the swamps of Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'How\'s it coming, $c?',
@OfferReward                = 'Good job! That should quell their little uprising.$b$bHere you go, take this as a reward.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 11840,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 2,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 11838,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 3,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 11837,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 4,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 11839,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 5,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Kill Murlocs */
SET
@ID                         = 42328,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Forward_Scout_Razza, /* ForwardScout */
@QuestEnder                 = @Forward_Scout_Razza, /* ForwardScout */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 4104, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 1,

@LogTitle                   = 'Fishy Business',
@LogDescription           = 'Them murlocs really be gettin on me nerves, mon! Every time I go down to collect some water they be nippin\' at me heels.$b$bDo some fishin\' for ol\' Razza, ya? Kill a good lot of \'em and I\'ll see about rewardin\' you good.',
@QuestDescription          = 'Forward Scout Razza wants you to kill Murlocs in central Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Forward Scout Razza.',
@RequestItems               = 'Have ye skinned them slimy tings?',
@OfferReward                = 'Good one, mon! We be eatin good tonight.',

@RewardItem1                = @HonorCoin,                @RequiredNpcOrGo1           = 458,                @POIContinent               = 0,
@RewardAmount1              = @NormalQuest_HonorCoins,                @RequiredNpcOrGoCount1      = 5,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 517,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 4,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 544,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 3,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 578,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 2,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @NormalQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Go talk to CampCommander */
SET
@ID                         = 42329,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Forward_Scout_Razza, /* ForwardScout */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 0,
@SuggestedGroupNum          = 0,
@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 3721,
@SpecialFlags               = 0,

@LogTitle                   = 'What Are You Doing in That Swamp?',
@LogDescription          = 'Tha boss left for da swamps tree days ago. She tinks I cannot hear \'em, partyin\' all night long while ah\'m stuck \'ere in dis towa\'... It just ain\'t right, mon!$b$bTake dis letter to \'em for me. It be da last report dey ever get from ol\' Razza.',
@QuestDescription             = 'Forward Scout Razza wants you to deliver a message to his Commander. She is supposedly at a camp in the swamps of western Azshara Crater.',
@AreaDescription            = 'Find Commander Gara',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = '',
@RequestItems               = 'Welcome to the jungle, $N.',
@OfferReward                = 'I\'ll read this later, right now we need to find you a job.',

@RewardItem1                = 0,                @RequiredNpcOrGo1           = 0,                @POIContinent               = 0,
@RewardAmount1              = 0,                @RequiredNpcOrGoCount1      = 0,                @POIx                       = 0,
@RewardItem2                = 0,                @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = 0,                @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 3721,             @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 1,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,                @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = 0,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 0,
@RewardFactionOverride1     = 0;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`, `ProvidedItemCount`) VALUES (@ID,@PreviousQuest,@SpecialFlags, 1); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Earthshaker */
SET
@ID                         = 42331,

@PreviousQuest              = 0,
@RewardNextQuest            = 0,

@QuestStarter               = @Commander_Gara, /* CampCommander */
@QuestEnder                 = @Commander_Gara, /* CampCommander */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 3,

@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'The Rumbling',
@LogDescription           = 'We can\'t get any sleep because of these damned earthquakes! I know what\'s causing them, but none of us are equipped to take down a rock giant.$b$bSay... you\'re tough, right? If you can knock over that pile of rocks I\'ll make it worth your while.',
@QuestDescription          = 'Commander Gara wants you to kill the rock giant Earthshaker in the swamp of Azshara Crater.',
@AreaDescription            = '',
@ObjectiveText1             = '',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Commander Gara.',
@RequestItems               = 'Have you done it? Is the giant dead?',
@OfferReward                = 'Thrall\'s balls! Here, take this. I\'m going to get some sleep.',

@RewardItem1                = @FieldSupplies,            @RequiredNpcOrGo1           = 12203,                @POIContinent               = 0,
@RewardAmount1              = 1,                @RequiredNpcOrGoCount1      = 1,                @POIx                       = 0,
@RewardItem2                = @HonorCoin,            @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = @EliteQuest_HonorCoins,               @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,             @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

/* Snarlax Snowpelt */
SET
@ID                         = 42332,

@PreviousQuest              = 42306,
@RewardNextQuest            = 0,

@QuestStarter               = @Farseer_Serena, /* Farseer */
@QuestEnder                 = @Farseer_Serena, /* Farseer */

@QuestType                  = 2, /* 0:Autocomplete | 2:Normal */
@QuestLevel                 = 20,
@MinLevel                   = 20,
@QuestSortID                = 268, /* Azshara Crater */
@QuestInfoID                = 1,
@SuggestedGroupNum          = 3,

@Flags                      = 8, /* 64:Raid | 512:Hide rewards | 4096:Daily | 131072:Show item in tracker | */
@StartItem                  = 0,
@SpecialFlags               = 0,

@LogTitle                   = 'Paranormal Activity',
@LogDescription            = 'There is an unnatural darkness in these totems, $n. I sense it prying at my mind, searching for a way in. It is no wonder the furbolgs have fallen under this influence.$b$bWe must locate the source of this corruption before it spreads. Venture into the furbolgs burrow and look for anything... unusual.',
@QuestDescription           = 'Farseer Serena wants you to enter the furbolg burrow in central Azshara Crater and search for the source of the corruption.',
@AreaDescription            = 'Find the source of the corruption.',
@ObjectiveText1             = 'Clease the corruption.',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Farseer Serena.',
@RequestItems               = 'Have you found success?',
@OfferReward                = 'Celebrate the victory $n, but there is still much to be done. The stain on this land is not yet washed clean.',

@RewardItem1                = @MysteryBox,            @RequiredNpcOrGo1           = 482112,            @POIContinent               = 0,
@RewardAmount1              = 1,                @RequiredNpcOrGoCount1      = 1,                @POIx                       = 0,
@RewardItem2                = @HonorCoin,            @RequiredNpcOrGo2           = 0,                @POIy                       = 0,
@RewardAmount2              = @EliteQuest_HonorCoins,               @RequiredNpcOrGoCount2      = 0,                @POIPriority                = 0,
@RewardItem3                = 0,                @RequiredNpcOrGo3           = 0,                @ItemDrop1                  = 0,
@RewardAmount3              = 0,                @RequiredNpcOrGoCount3      = 0,                @ItemDropQuantity1          = 0,
@RewardItem4                = 0,                @RequiredNpcOrGo4           = 0,                @ItemDrop2                  = 0,
@RewardAmount4              = 0,                @RequiredNpcOrGoCount4      = 0,                @ItemDropQuantity2          = 0,
@RewardChoiceItemID1        = 0,                @RequiredItemId1            = 0,                @ItemDrop3                  = 0,
@RewardChoiceItemQuantity1  = 0,                @RequiredItemCount1         = 0,                @ItemDropQuantity3          = 0,
@RewardChoiceItemID2        = 0,                @RequiredItemId2            = 0,                @ItemDrop4                  = 0,
@RewardChoiceItemQuantity2  = 0,                @RequiredItemCount2         = 0,                @ItemDropQuantity4          = 0,
@RewardChoiceItemID3        = 0,                @RequiredItemId3            = 0,                @VerifiedBuild              = 12340,
@RewardChoiceItemQuantity3  = 0,                @RequiredItemCount3         = 0,
@RewardChoiceItemID4        = 0,                @RequiredItemId4            = 0,
@RewardChoiceItemQuantity4  = 0,                @RequiredItemCount4         = 0,
@RewardChoiceItemID5        = 0,                @RequiredItemId5            = 0,
@RewardChoiceItemQuantity5  = 0,                @RequiredItemCount5         = 0,
@RewardChoiceItemID6        = 0,                @RequiredItemId6            = 0,
@RewardChoiceItemQuantity6  = 0,                @RequiredItemCount6         = 0,
@RewardTitle                = 0,                @RequiredFactionId1         = 0,
@RewardHonor                = 0,             @RequiredFactionValue1      = 0,
@RewardKillHonor            = 0,                @RequiredFactionId2         = 0,
@RewardArenaPoints          = 0,                @RequiredFactionValue2      = 0,
@RewardXPDifficulty         = 0,                @RequiredPlayerKills        = 0,
@RewardMoney                = @EliteQuest_Gold,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 1090,
@RewardFactionOverride1     = 5000;

DELETE FROM `quest_template`        WHERE ID =    @ID;
DELETE FROM `quest_template_addon`  WHERE ID =    @ID;
DELETE FROM `quest_request_items`   WHERE ID =    @ID;
DELETE FROM `quest_offer_reward`    WHERE ID =    @ID;
DELETE FROM `creature_queststarter` WHERE quest = @ID;
DELETE FROM `creature_questender`   WHERE quest = @ID;

INSERT INTO `quest_template` VALUES (@ID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,0,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,@LogTitle,@QuestDescription,@LogDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@QuestStarter, @ID); 
INSERT INTO `creature_questender` (`id`, `quest`)   VALUES (@QuestEnder, @ID); 
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `SpecialFlags`) VALUES (@ID,@PreviousQuest,@SpecialFlags); 
INSERT INTO `quest_request_items` VALUES (@ID, 1, 6, @RequestItems, @VerifiedBuild); 
INSERT INTO `quest_offer_reward` VALUES (@ID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);

DELETE FROM `pool_template` WHERE `entry`=6001;
INSERT INTO `pool_template` VALUES (6001, 1, '');
DELETE FROM `pool_quest` WHERE `pool_entry`=6001;
INSERT INTO `pool_quest` VALUES
(42309, 6001, 'Spymaster - Warbeads'),
(42301, 6001, 'Spymaster - Gorlocs'),
(42307, 6001, 'Spymaster - Wolvar Claws'),
(42321, 6001, 'Spymaster - Spirit Ash');

DELETE FROM `pool_template` WHERE `entry`=6002;
INSERT INTO `pool_template` VALUES (6002, 1, '');
DELETE FROM `pool_quest` WHERE `pool_entry`=6002;
INSERT INTO `pool_quest` VALUES
(42312, 6002, 'Farseer - Motes'),
(42313, 6002, 'Farseer - Motes'),
(42314, 6002, 'Farseer - Motes'),
(42315, 6002, 'Farseer - Motes'),
(42316, 6002, 'Farseer - Motes');

DELETE FROM `pool_template` WHERE `entry`=6003;
INSERT INTO `pool_template` VALUES (6003, 2, '');
DELETE FROM `pool_quest` WHERE `pool_entry`=6003;
INSERT INTO `pool_quest` VALUES
(42311, 6003, 'CampCommander - Crocolisk Hides'),
(42317, 6003, 'CampCommander - Tiki Masks'),
(42320, 6003, 'CampCommander - Dragonscales'),
(42326, 6003, 'CampCommander - Raptors'),
(917,   6003, 'CampCommander - Eggs'),
(42327, 6003, 'CampCommander - Gnolls');

DELETE FROM `pool_template` WHERE `entry`=6004;
INSERT INTO `pool_template` VALUES (6004, 1, '');
DELETE FROM `pool_quest` WHERE `pool_entry`=6004;
INSERT INTO `pool_quest` VALUES
(42302, 6004, 'Loremaster - Scales/Feathers/Pelts'),
(42304, 6004, 'Loremaster - Scales/Feathers/Pelts'),
(42308, 6004, 'Loremaster - Scales/Feathers/Pelts');

DELETE FROM `pool_template` WHERE `entry`=6005;
INSERT INTO `pool_template` VALUES (6005, 1, '');
DELETE FROM `pool_quest` WHERE `pool_entry`=6005;
INSERT INTO `pool_quest` VALUES
(42303, 6005, 'Scout - Murlocs/Satyrs/Buzzards'),
(42305, 6005, 'Scout - Murlocs/Satyrs/Buzzards'),
(42328, 6005, 'Scout - Murlocs/Satyrs/Buzzards');

DELETE FROM `creature_queststarter` WHERE `id` IN (7765);
DELETE FROM `creature_questender` WHERE `id` IN (7765);
UPDATE `quest_template` SET `RewardKillHonor`=12, `RewardAmount1`=3, `RewardMoney`=150000, `RewardFactionOverride1`=50000 , `RewardHonor`=0 WHERE `QuestSortID`=268 AND `RewardItem1`>0 AND `SuggestedGroupNum`=0;
UPDATE `quest_template` SET `RewardKillHonor`=16, `RewardAmount1`=5, `RewardMoney`=250000, `RewardFactionOverride1`=100000, `RewardHonor`=0 WHERE `QuestSortID`=268 AND `RewardItem1`>0 AND `SuggestedGroupNum`=2;
UPDATE `quest_template` SET `RewardKillHonor`=20, `RewardAmount2`=7, `RewardMoney`=500000, `RewardFactionOverride1`=150000, `RewardHonor`=0 WHERE `QuestSortID`=268 AND `RewardItem1`>0 AND `SuggestedGroupNum`=3;
UPDATE `quest_template` SET `RewardKillHonor`=24, `RewardAmount2`=10,`RewardMoney`=1000000,`RewardFactionOverride1`=250000, `RewardHonor`=0 WHERE `QuestSortID`=268 AND `RewardItem1`>0 AND `SuggestedGroupNum`=4;
