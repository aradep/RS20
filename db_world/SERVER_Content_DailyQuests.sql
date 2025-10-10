-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Author Discord: @Degen
-- 2025
-- -----------------------------------
-- Server content - Daily Quests
-- -----------------------------------

-- PvP Daily Rewards
SET 
@Item   = 45986, -- Spoils of War
@Honor  = 0,
@Arena  = 0,
@Gold   = 50000;

-- PvP Daily Quests
REPLACE INTO `quest_template` VALUES 
(11339, 2, -1, 20, 3358, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 72, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  690, 
'Call to Arms: Arathi Basin',  'Win an Arathi Basin battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Arathi Basin, claim victory, and return to be rewarded.', 'Victory in Arathi Basin', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11342, 2, -1, 20, 3277, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 72, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  690, 
'Call to Arms: Warsong Gulch', 'Win a Warsong Gulch battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Warsong Gulch, claim victory, and return to be rewarded.', 'Victory in Warsong Gulch', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11335, 2, -1, 20, 3358, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 76, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 
'Call to Arms: Arathi Basin',  'Win an Arathi Basin battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Arathi Basin, claim victory, and return to be rewarded.', 'Victory in Arathi Basin', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(11338, 2, -1, 20, 3277, 41, 0, 0, 0, 0, 0, 0, 0, @Gold, 0, 0, 0, 0, @Honor, 0, 4098, 0, @Item, 1, 40753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @Arena, 76, 1, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 
'Call to Arms: Warsong Gulch', 'Win a Warsong Gulch battleground match and return to Herod in the Hall of Champions.', 'In life I strived for perfection in combat, now I offer you an opportunity to do the same.$b$bGo to Warsong Gulch, claim victory, and return to be rewarded.', 'Victory in Warsong Gulch', 'Return to Herod.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_offer_reward` VALUES 
(11335, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340),
(11338, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340),
(11339, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340),
(11342, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. In time you may have a statue of your own in these halls.', 12340);

-- Herod starts Call to Arms quests
REPLACE INTO `creature_queststarter` VALUES
-- Alliance --
(482030, 11335),
(482030, 11338),
-- Horde--
(482030, 11342),
(482030, 11339);

-- Herod ends Call to Arms quests
REPLACE INTO `creature_questender` VALUES   
-- Alliance --
(482030, 11335),
(482030, 11338),
-- Horde--
(482030, 11342),
(482030, 11339);

-- Remove disable for Call to Arms quests
DELETE FROM `disables` WHERE `comment` LIKE '%Call to Arms:%';

-- Alliance Pool
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(482051, 1, 'Daily PvP Alliance');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(11335, 482051, 'Call to Arms: Arathi Basin (Alliance)'),
(11338, 482051, 'Call to Arms: Warsong Gulch (Alliance)');

-- Horde Pool
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(482052, 1, 'Daily PvP Horde');
REPLACE INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(11339, 482052, 'Call to Arms: Arathi Basin (Horde)'),
(11342, 482052, 'Call to Arms: Warsong Gulch (Horde)');

-- PvE Daily Rewards
SET 
@Item   = 41426, -- Mystery Box
@Honor  = 0,
@Arena  = 0,
@Gold   = 50000;

-- Breadcrumb Quests
REPLACE INTO `quest_template` VALUES 
(51339, 2, -1, 20, 1581, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: The Deadmines',  'Investigate The Deadmines.', 'Your assistance is required in The Deadmines.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Long-Lost John', 'Find Long-Lost John.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51342, 2, -1, 20, 718, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Wailing Caverns', 'Investigate Wailing Caverns.', 'Your assistance is required in Wailing Caverns.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find the Disciple of Naralex', 'Find the Disciple of Naralex.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51335, 2, -1, 20, 209, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Shadowfang Keep',  'Investigate Shadowfang Keep.', 'Your assistance is required in Shadowfang Keep.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Deathstalker Jordan', 'Find Deathstalker Jordan.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51336, 2, -1, 20, 719, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Blackfathom Deeps',  'Investigate Blackfathom Deeps.', 'Your assistance is required in Blackfathom Deeps.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Mergle the Murloc.', 'Find Mergle the Murloc.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340),
(51338, 2, -1, 20, 717, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Call to Valor: Stormwind Stockade', 'Investigate Stormwind Stockade.', 'Your assistance is required in Stormwind Stockade.$b$bGo there and seek out any soul that may be in need of help, this is your duty as a champion.', 'Find Squeaky Pete.', 'Find Squeaky Pete.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_template_addon` VALUES 
(51339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(51338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `quest_offer_reward` VALUES 
(51339, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51342, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51335, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51336, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340),
(51338, 1, 0, 0, 0, 0, 0, 0, 0, 'Who are you?', 12340);

-- Herod starts breadcrumb
REPLACE INTO `creature_queststarter` VALUES
(482030, 51339), -- DM breadcrumb
(482030, 51342), -- WC breadcrumb
(482030, 51335), -- SFK breadcrumb
(482030, 51336), -- BFD breadcrumb
(482030, 51338); -- STK breadcrumb

-- Dungeon NPCs end breadcrumb
REPLACE INTO `creature_questender` VALUES
(482035, 51339), -- DM daily
(3678,   51342), -- WC daily
(482036, 51335), -- SFK daily
(482037, 51336), -- BFD daily
(482038, 51338); -- STK daily

-- Pooling
REPLACE INTO `pool_template` VALUES (58200, 0, 'DM Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51339, 58200, 'DM Breadcrumb'),
(48201, 58200, 'DM Daily');
REPLACE INTO `pool_template` VALUES (58201, 0, 'WC Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51342, 58201, 'WC Breadcrumb'),
(48202, 58201, 'WC Daily');
REPLACE INTO `pool_template` VALUES (58202, 0, 'SFK Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51335, 58202, 'SFK Breadcrumb'),
(48203, 58202, 'SFK Daily');
REPLACE INTO `pool_template` VALUES (58203, 0, 'BFD Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51336, 58203, 'BFD Breadcrumb'),
(48204, 58203, 'BFD Daily');
REPLACE INTO `pool_template` VALUES (58204, 0, 'STK Dungeon Daily');
REPLACE INTO `pool_quest` VALUES
(51338, 58204, 'STK Breadcrumb'),
(48205, 58204, 'STK Daily');

-- Master pool
REPLACE INTO `pool_template` VALUES (58205, 1, 'Dungeon Daily Master Pool');
REPLACE INTO `pool_pool` VALUES
(58200, 58205, 20, 'DM'),
(58201, 58205, 20, 'WC'),
(58202, 58205, 20, 'SFK'),
(58203, 58205, 20, 'BFD'),
(58204, 58205, 20, 'STK');

-- Quests

-- Deadmines
-- -----------------------------------

SET
@QuestID                    = 48201,
@PreviousQuest              = 0,

@QuestStarterID             = 482035,
@QuestEnderID               = 482035,

@QuestType                  = 2, -- 0:Autocomplete, 2:Normal --
@QuestLevel                 = 20,
@MinLevel                   = 20,

@QuestSortID                = 1581, -- Area ID --
@QuestInfoID                = 81,
@SuggestedGroupNum          = 0,
@Flags                      = 4106, -- 512:Hide rewards, 4096:Daily, 131072:Show item in quest tracker --
@StartItem                  = 0,
@TimeAllowed                = 0,
@AllowableRaces             = 0,
@SpecialFlags               = 1, -- 1:Repeatable --

@LogTitle                   = 'Change of Ownership',
@QuestDescription           = 'That good for nothin\' Vancleef and his band of brigands tossed me overboard in the Veiled Sea, stole my ship, and then tried to erase my name from the ledgers. People even think the Defias built the Ironclad - Hah! I\'ll show them... and by that I mean you\'ll show them.$b$bI want them dead, you hear? Dead! Then toss Edwin\'s body to the sharks like he did for me. Meet me by the secret tunnel when you\'ve finished.',
@LogDescription             = 'Long Lost John wants you to settle an old score with VanCleef.',
@AreaDescription            = '',
@ObjectiveText1             = 'Edwin VanCleef slain',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Meet John by the exit tunnel.',
@RequestItems               = 'Did you do it? Is he dead?',
@OfferReward                = 'I wish I could have been there, I truly do... it just felt safer to watch from over here.$b$bAnyway I swiped this from their stash while you were wrecking the place. Now if you\'ll excuse me I have a ship to repossess.',

@RequiredNpcOrGo1           = 639,
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
@RewardItem2                = 40753,
@RewardAmount2              = 1,
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
@RewardMoney                = @Gold,
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
-- --------------------------------------------------------------------------------------- --

-- Wailing Caverns
-- -----------------------------------

SET
@QuestID                    = 48202,
@PreviousQuest              = 0,

@QuestStarterID             = 3678, -- Disciple of Naralex
@QuestEnderID               = 3678, -- Disciple of Naralex

@QuestType                  = 2, -- 0:Autocomplete, 2:Normal --
@QuestLevel                 = 20,
@MinLevel                   = 20,

@QuestSortID                = 718, -- Area ID --
@QuestInfoID                = 81,
@SuggestedGroupNum          = 0,
@Flags                      = 4106, -- 512:Hide rewards, 4096:Daily, 131072:Show item in quest tracker --
@StartItem                  = 0,
@TimeAllowed                = 0,
@AllowableRaces             = 0,
@SpecialFlags               = 1, -- 1:Repeatable --

@LogTitle                   = 'Waking the Dreamer',
@QuestDescription           = 'You must defeat the Fanglords so that I may perform the awakening ritual and save Naralex from the Dream. The fate of this land hangs in the balance.',
@LogDescription             = 'The Disciple of Naralex wants you to help him cleanse the corruption in the Wailing Caverns.',
@AreaDescription            = '',
@ObjectiveText1             = 'Mutanus the Devourer slain',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to the Disciple of Naralex.',
@RequestItems               = 'We must awaken the dreamer.',
@OfferReward                = 'You have done a great deed, $R. Naralex recovered this from the Dream, maybe you can make some use out of it.',

@RequiredNpcOrGo1           = 3654,
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
@RewardItem2                = 40753,
@RewardAmount2              = 1,
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
@RewardMoney                = @Gold,
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
-- --------------------------------------------------------------------------------------- --

-- Shadowfang Keep
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

@LogTitle                   = 'At Death\'s Door',
@QuestDescription           = 'I came here to retrieve my friend Vincent\'s body but now it looks like I\'ll be staying for dinner.$b$bYou need to finish what I started, $R. Find the Archmage and bring him down. Avenge the Deathstalkers!',
@LogDescription             = 'Deathstalker Jordan wants you to slay Archmage Arugal.',
@AreaDescription            = '',
@ObjectiveText1             = 'Archmage Arugal slain',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Deathstalker Jordan.',
@RequestItems               = 'How\'d it go? Did you take my shortcut?',
@OfferReward                = 'Thank you, $R. I can rest easy knowing that sorcerer\'s evil has been put to an end.$b$bTake this, I won\'t get much use out of it now.',

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
@RewardItem2                = 40753,
@RewardAmount2              = 1,
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
@RewardMoney                = @Gold,
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
-- --------------------------------------------------------------------------------------- --

-- Blackfathom Deeps
-- -----------------------------------
SET
@QuestID                    = 48204,
@PreviousQuest              = 0,

@QuestStarterID             = 482037,
@QuestEnderID               = 482037,

@QuestType                  = 2, -- 0:Autocomplete, 2:Normal --
@QuestLevel                 = 20,
@MinLevel                   = 20,

@QuestSortID                = 719, -- Area ID --
@QuestInfoID                = 81,
@SuggestedGroupNum          = 0,
@Flags                      = 4106, -- 512:Hide rewards, 4096:Daily, 131072:Show item in quest tracker --
@StartItem                  = 0,
@TimeAllowed                = 0,
@AllowableRaces             = 0,
@SpecialFlags               = 1, -- 1:Repeatable --

@LogTitle                   = 'Pearl Diving',
@QuestDescription           = '"Just wear this" he says, "the murlocs won\'t even notice you!" Well the local wildlife down here is more than just murlocs and some of them have big meaty claws.$b$bListen, you look strong. I need you to go in there and clear them out so I can get back to pearl diving. In exchange I\'ll give you some of the treasures I found.$b$bDo we have a deal?',
@LogDescription             = 'Mergle the Murloc wants you to clear out the hostile wildlife within Blackfathom Deeps.',
@AreaDescription            = '',
@ObjectiveText1             = 'Aku\'mai slain',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Find Mergle near Amu\'mai\'s altar.',
@RequestItems               = 'Gerbleglerg?',
@OfferReward                = 'That was amazing! Here\'s that treasure I promised.',

@RequiredNpcOrGo1           = 4829,
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
@RewardItem2                = 40753,
@RewardAmount2              = 1,
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
@RewardMoney                = @Gold,
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
-- --------------------------------------------------------------------------------------- --

-- Stormwind Stockade
-- -----------------------------------

-- Quest item
UPDATE `item_template` SET `name`='Engraved Pocket Watch', `class`=12, `bonding`=4, `quality`=1 WHERE `entry` = 5374;

-- Boss loot
DELETE FROM `creature_loot_template` WHERE `entry`=1716 AND `item`=5374;
REPLACE INTO `creature_loot_template` VALUES
(1716, 5374, 0, 100, 1, 1, 0, 1, 1, 'Bazil Thredd - Engraved Pocket Watch');

SET
@QuestID                    = 48205,
@PreviousQuest              = 0,

@QuestStarterID             = 482038,
@QuestEnderID               = 482038,

@QuestType                  = 2, -- 0:Autocomplete, 2:Normal --
@QuestLevel                 = 20,
@MinLevel                   = 20,

@QuestSortID                = 717, -- Area ID --
@QuestInfoID                = 81,
@SuggestedGroupNum          = 0,
@Flags                      = 4106, -- 512:Hide rewards, 4096:Daily, 131072:Show item in quest tracker --
@StartItem                  = 0,
@TimeAllowed                = 0,
@AllowableRaces             = 0,
@SpecialFlags               = 1, -- 1:Repeatable --

@LogTitle                   = 'Loose Thredds',
@QuestDescription           = 'Hey, uh... listen. We all know ol\' Baz has his head on the chopping block and I bet you\'re here to swing the axe for Stormwind, huh? Well I have a favor to ask...$b$bThredd stole something from me and I\'ve never had the guts to try and get it back. When you do the deed, before you let them take his corpse away would you check his pockets? He always carrys it on him.$b$bIf you find it, bring it back. There\'s something in it for you.',
@LogDescription             = 'Squeaky Pete wants you to retrieve an heirloom from Bazil Thredd.',
@AreaDescription            = '',
@ObjectiveText1             = 'Heirloom retrieved',
@ObjectiveText2             = '',
@ObjectiveText3             = '',
@ObjectiveText4             = '', 
@QuestCompletionLog         = 'Return to Squeaky Pete\'s cell.',
@RequestItems               = 'Did you get it?',
@OfferReward                = 'As promised, my end of the bargain.',

@RequiredNpcOrGo1           = 0,
@RequiredNpcOrGoCount1      = 0,
@RequiredNpcOrGo2           = 0,
@RequiredNpcOrGoCount2      = 0,
@RequiredNpcOrGo3           = 0,
@RequiredNpcOrGoCount3      = 0,
@RequiredNpcOrGo4           = 0,
@RequiredNpcOrGoCount4      = 0,
@RequiredItemId1            = 5374,
@RequiredItemCount1         = 1,
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
@RewardItem2                = 40753,
@RewardAmount2              = 1,
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
@RewardMoney                = @Gold,
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
-- --------------------------------------------------------------------------------------- --
