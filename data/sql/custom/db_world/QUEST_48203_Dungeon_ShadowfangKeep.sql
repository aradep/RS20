-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Quest - Daily Shadowfang Keep
-- -----------------------------------

SET
@QuestID                    = 48203,
@PreviousQuest              = 0,

@QuestStarterID             = 482036,
@QuestEnderID               = 482036,

@QuestType                  = 2, -- 0:Autocomplete, 2:Normal --
@QuestLevel                 = 20,
@MinLevel                   = 20,

@QuestSortID                = 209, -- Area ID --
@QuestInfoID                = 81,
@SuggestedGroupNum          = 0,
@Flags                      = 4106, -- 512:Hide rewards, 4096:Daily, 131072:Show item in quest tracker --
@StartItem                  = 0,
@TimeAllowed                = 0,
@AllowableRaces             = 0,
@SpecialFlags               = 1, -- 1:Repeatable --

@LogTitle                   = 'Change of Ownership',
@QuestDescription           = 'That good for nothin\' rogue and his band of brigands tossed me overboard in the Veiled Sea, stole my ship, then tried to erase my name from the ledgers. People even think the Defias built the Ironclad - Hah! I\'ll show them... and by that I mean you\'ll show them.$b$bI want them dead, you hear? Dead! Then toss Edwin\'s body to the sharks like he tried on me. We\'ll regroup by the secret tunnel when you\'re done.',
@LogDescription             = 'Long Lost John wants you to settle an old score with VanCleef.',
@AreaDescription            = '',
@ObjectiveText1             = 'Archmage Arugal slain.',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Meet John by the exit tunnel.',
@RequestItems               = 'Did you do it? Is he dead?',
@OfferReward                = 'I wish I could have been there, I really do... but it felt safer to watch from here.$b$bI swiped this from their stash while you were wrecking the place. Now if you\'ll excuse me I have a ship to repossess.',

@RequiredNpcOrGo1           = 4275,
@RequiredNpcOrGoCount1      = 1,
@RequiredNpcOrGo2           = 0,
@RequiredNpcOrGoCount2      = 0,
@RequiredNpcOrGo3           = 0,
@RequiredNpcOrGoCount3      = 0,
@RequiredNpcOrGo4           = 0,
@RequiredNpcOrGoCount4      = 0,
@RequiredItemId1            = 0,
@RequiredItemCount1         = 0,
@RequiredItemId2            = 0,
@RequiredItemCount2         = 0,
@RequiredItemId3            = 0,
@RequiredItemCount3         = 0,
@RequiredItemId4            = 0,
@RequiredItemCount4         = 0,
@RequiredItemId5            = 0,
@RequiredItemCount5         = 0,
@RequiredItemId6            = 0,
@RequiredItemCount6         = 0,
@RequiredFactionId1         = 0,
@RequiredFactionValue1      = 0,
@RequiredFactionId2         = 0,
@RequiredFactionValue2      = 0,
@RequiredPlayerKills        = 0,

@RewardItem1                = 41426,
@RewardAmount1              = 1,
@RewardItem2                = 0,
@RewardAmount2              = 0,
@RewardItem3                = 0,
@RewardAmount3              = 0,
@RewardItem4                = 0,
@RewardAmount4              = 0,
@RewardChoiceItemID1        = 0,
@RewardChoiceItemQuantity1  = 0,
@RewardChoiceItemID2        = 0,
@RewardChoiceItemQuantity2  = 0,
@RewardChoiceItemID3        = 0,
@RewardChoiceItemQuantity3  = 0,
@RewardChoiceItemID4        = 0,
@RewardChoiceItemQuantity4  = 0,
@RewardChoiceItemID5        = 0,
@RewardChoiceItemQuantity5  = 0,
@RewardChoiceItemID6        = 0,
@RewardChoiceItemQuantity6  = 0,
@RewardTitle                = 0,
@RewardHonor                = 0,
@RewardKillHonor            = 0,
@RewardArenaPoints          = 0,
@RewardXPDifficulty         = 0,
@RewardMoney                = 250000,
@RewardMoneyDifficulty      = 0,
@RewardDisplaySpell         = 0,
@RewardSpell                = 0,
@RewardFactionID1           = 0,
@RewardFactionOverride1     = 0,
@RewardNextQuest            = 0,

@POIContinent               = 0,
@POIx                       = 0,
@POIy                       = 0,
@POIPriority                = 0,
@ItemDrop1                  = 0,
@ItemDropQuantity1          = 0,
@ItemDrop2                  = 0,
@ItemDropQuantity2          = 0,
@ItemDrop3                  = 0,
@ItemDropQuantity3          = 0,
@ItemDrop4                  = 0,
@ItemDropQuantity4          = 0,
@VerifiedBuild              = 12345;

-- --------------------------------------------------------------------------------------- --
-- --------------------------------------------------------------------------------------- --

-- Add Quest --
DELETE FROM quest_template        WHERE ID =    @QuestID;
DELETE FROM quest_template_addon  WHERE ID =    @QuestID;
DELETE FROM quest_request_items   WHERE ID =    @QuestID;
DELETE FROM quest_offer_reward    WHERE ID =    @QuestID;
DELETE FROM creature_queststarter WHERE quest = @QuestID;
DELETE FROM creature_questender   WHERE quest = @QuestID;
INSERT INTO quest_template VALUES (@QuestID,@QuestType,@QuestLevel,@MinLevel,@QuestSortID,@QuestInfoID,@SuggestedGroupNum,@RequiredFactionId1,@RequiredFactionId2,@RequiredFactionValue1,@RequiredFactionValue2,@RewardNextQuest,@RewardXPDifficulty,@RewardMoney,@RewardMoneyDifficulty,@RewardDisplaySpell,@RewardSpell,@RewardHonor,@RewardKillHonor,@StartItem,@Flags,@RequiredPlayerKills,@RewardItem1,@RewardAmount1,@RewardItem2,@RewardAmount2,@RewardItem3,@RewardAmount3,@RewardItem4,@RewardAmount4,@ItemDrop1,@ItemDropQuantity1,@ItemDrop2,@ItemDropQuantity2,@ItemDrop3,@ItemDropQuantity3,@ItemDrop4,@ItemDropQuantity4,@RewardChoiceItemID1,@RewardChoiceItemQuantity1,@RewardChoiceItemID2,@RewardChoiceItemQuantity2,@RewardChoiceItemID3,@RewardChoiceItemQuantity3,@RewardChoiceItemID4,@RewardChoiceItemQuantity4,@RewardChoiceItemID5,@RewardChoiceItemQuantity5,@RewardChoiceItemID6,@RewardChoiceItemQuantity6,@POIContinent,@POIx,@POIy,@POIPriority,@RewardTitle,0,@RewardArenaPoints,@RewardFactionID1,0,@RewardFactionOverride1,0,0,0,0,0,0,0,0,0,0,0,0,@TimeAllowed,@AllowableRaces,@LogTitle,@LogDescription,@QuestDescription,@AreaDescription,@QuestCompletionLog,@RequiredNpcOrGo1,@RequiredNpcOrGo2,@RequiredNpcOrGo3,@RequiredNpcOrGo4,@RequiredNpcOrGoCount1,@RequiredNpcOrGoCount2,@RequiredNpcOrGoCount3,@RequiredNpcOrGoCount4,@RequiredItemId1,@RequiredItemId2,@RequiredItemId3,@RequiredItemId4,@RequiredItemId5,@RequiredItemId6,@RequiredItemCount1,@RequiredItemCount2,@RequiredItemCount3,@RequiredItemCount4,@RequiredItemCount5,@RequiredItemCount6,0,@ObjectiveText1,@ObjectiveText2,@ObjectiveText3,@ObjectiveText4,@VerifiedBuild);
INSERT INTO quest_template_addon (ID, PrevQuestID, SpecialFlags) VALUES (@QuestID, @PreviousQuest, @SpecialFlags);
INSERT INTO quest_request_items VALUES (@QuestID, 1, 1, @RequestItems, @VerifiedBuild);
INSERT INTO quest_offer_reward VALUES (@QuestID, 1, 0, 0, 0, 0, 0, 0, 0, @OfferReward, @VerifiedBuild);
INSERT INTO creature_queststarter (id, quest) VALUES (@QuestStarterID, @QuestID); 
INSERT INTO creature_questender (id, quest) VALUES (@QuestEnderID, @QuestID);
-- Add questgiver flag --
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry IN (@QuestStarterID, @QuestEnderID);
