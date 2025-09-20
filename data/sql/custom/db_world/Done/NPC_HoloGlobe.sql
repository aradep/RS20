-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Holo-globe teleporter NPC
-- -----------------------------------

-- Creature template
SET
@Entry      := 482001,
@Model      := 29133,
@Name       := "Holo-globe",
@Title      := "Teleporter",
@Icon       := "Speak",
@GossipMenu := 48201,
@MinLevel   := 20,
@MaxLevel   := 20,
@Faction    := 35,
@NPCFlags   := 1,
@Scale      := 0.655,
@Rank       := 0,
@Class      := 1,
@UnitFlags  := 2,
@UnitFlags2 := 32768,
@Type       := 0,
@TypeFlags  := 0,
@FlagsExtra := 0,
@AIName     := "SmartAI",
@Script     := "";

DELETE FROM creature_template WHERE entry = @Entry;
INSERT INTO creature_template (entry, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, faction, npcflag, speed_walk, speed_run, scale, `rank`, unit_class, unit_flags, type, type_flags, RegenHealth, flags_extra, AiName, ScriptName) VALUES
(@Entry, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM creature_template_model WHERE CreatureID = @Entry;
INSERT INTO creature_template_model VALUES (@Entry, 0, @Model, @Scale, 1, 12340);

-- Gossip menus and text
SET
@Text_Root              := 'Images of a far-off land flash before your eyes.',
@Text_ExplainColiseum   := 'The Coliseum is where you will find the PvP vendors and arena services. You can also challenge players to a duel here.',
@Text_ExplainAzshara    := 'Azshara Crater is a free-for-all PvP zone full of daily quests that reward Honor Coins and other useful items.$b$bAre you sure you wish to enter?',
@Text_ExplainDalaran    := 'The Hall of Champions contains class trainers, vendors for gear, glyphs, enchants, and consumables, and services like the barber and auctionhouse.',
@ChooseArena1           := 'Coliseum (BG/Arena)',
@ChooseArena2           := 'Go to the arena.',
@ChooseCrater1          := 'Azshara Crater (wPvP)',
@ChooseCrater2          := 'Enter Azshara Crater.',
@ChooseMall1            := 'Hall of Champions (Mall)',
@ChooseMall2            := 'Teleport to Hall of Champions.',
@Back                   := 'Back.',
@GossipMenu             := 48201,
@GossipMenuOption       := 48201,
@NpcText                := 48201,
@BroadcastText          := 148201;

DELETE FROM `gossip_menu` WHERE `menuID` IN (@GossipMenu,@GossipMenu+1,@GossipMenu+2,@GossipMenu+3);
INSERT INTO `gossip_menu` VALUES (@GossipMenu, @GossipMenuOption);
INSERT INTO `gossip_menu` VALUES (@GossipMenu+1, @GossipMenuOption+1);
INSERT INTO `gossip_menu` VALUES (@GossipMenu+2, @GossipMenuOption+2);
INSERT INTO `gossip_menu` VALUES (@GossipMenu+3, @GossipMenuOption+3);

REPLACE INTO `broadcast_text` VALUES (@BroadcastText, 0, @Text_Root, @Text_Root, 1, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+1, 0, @Text_ExplainDalaran, @Text_ExplainDalaran, 1, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+2, 0, @Text_ExplainColiseum, @Text_ExplainColiseum, 1, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+3, 0, @Text_ExplainAzshara, @Text_ExplainAzshara, 1, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+4, 0, @ChooseMall1, @ChooseMall1,              0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+5, 0, @ChooseMall2, @ChooseMall2,    0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+6, 0, @Back , @Back ,    0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+7, 0, @ChooseArena1, @ChooseArena1,              0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+8, 0, @ChooseArena2, @ChooseArena2,    0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+9, 0, @Back , @Back ,    0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+10, 0, @ChooseCrater1, @ChooseCrater1,              0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+11, 0, @ChooseCrater2, @ChooseCrater2,    0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
REPLACE INTO `broadcast_text` VALUES (@BroadcastText+12, 0, @Back , @Back ,    0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

REPLACE INTO `npc_text` VALUES (@NpcText, @Text_Root, @Text_Root, @BroadcastText, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `npc_text` VALUES (@NpcText+1, @Text_ExplainDalaran, @Text_ExplainDalaran, @BroadcastText+1, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `npc_text` VALUES (@NpcText+2, @Text_ExplainColiseum, @Text_ExplainColiseum, @BroadcastText+2, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `npc_text` VALUES (@NpcText+3, @Text_ExplainAzshara, @Text_ExplainAzshara, @BroadcastText+3, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `gossip_menu_option` WHERE `menuID` IN (@GossipMenu,@GossipMenu+1,@GossipMenu+2,@GossipMenu+3);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu,   1, 6, @ChooseMall1,         @BroadcastText+4, 1, 1, @GossipMenu+1, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu+1, 1, 6, @ChooseMall2        , @BroadcastText+5, 1, 1,     0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu+1, 2, 0, @Back  , @BroadcastText+6, 1, 1, @GossipMenu, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu,   2, 9, @ChooseArena1,        @BroadcastText+7, 1, 1, @GossipMenu+2, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu+2, 1, 9, @ChooseArena2        , @BroadcastText+8, 1, 1,     0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu+2, 2, 0, @Back  , @BroadcastText+9, 1, 1, @GossipMenu, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu,   3, 9, @ChooseCrater1,       @BroadcastText+10, 1, 1, @GossipMenu+3, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu+3, 1, 9, @ChooseCrater2        , @BroadcastText+11, 1, 1,     0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` VALUES (@GossipMenu+3, 2, 0, @Back  , @BroadcastText+12, 1, 1, @GossipMenu, 0, 0, 0, NULL, 0, 0);

-- Smart script
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Entry;
INSERT INTO `smart_scripts` 
(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@Entry, 0, 1, 0, 62, 0, 100, 0, @GossipMenu+1, 1, 0, 0, 0, 62, 189, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1945.74, -431.596, 16.368, 0, 'On Gossip Option 1 Selected - Teleport Invoker to the Hall of Champions'),
(@Entry, 0, 2, 0, 62, 0, 100, 0, @GossipMenu+2, 1, 0, 0, 0, 62, 571, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 8515.2158, 781.480, 560.5, 1.57, 'On Gossip Option 1 Selected - Teleport Invoker to Argent Arena'),
(@Entry, 0, 3, 0, 62, 0, 100, 0, @GossipMenu+3, 1, 0, 0, 0, 62, 37, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 444.971, 141.985, 305.964, 2.232, 'On Gossip Option 1 Selected - Teleport Invoker to Azshara Crater');
