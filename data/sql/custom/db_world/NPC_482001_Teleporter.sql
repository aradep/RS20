-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- SmartAI teleport NPC
-- -----------------------------------

-- Creature template
SET
@Entry      = 482001,
@Model      = 29133,
@Name       = "Holo-globe",
@Title      = "Teleporter",
@Icon       = "Speak",
@GossipMenu = 48201,
@Broadcast  = 148201,
@NpcText    = 48201,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 1,
@Scale      = 0.9,
@Rank       = 0,
@Class      = 1,
@UnitFlags  = 2,
@UnitFlags2 = 32768,
@Type       = 0,
@TypeFlags  = 0,
@FlagsExtra = 0,
@AIName     = "SmartAI",
@Script     = "";
DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `AiName`, `ScriptName`) VALUES (@Entry, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` VALUES (@Entry, 0, @Model, @Scale, 1, 12340);

-- Creature
-- ------------------------
DELETE FROM `creature` WHERE `id1` = @Entry AND `Comment` = 'CustomNPC';
-- Hub
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@Entry, 0, 0, 189, 0, 0, 1, 1, 0, 1964.995, -431.62, 6.177, 6.28, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 'CustomNPC');
-- Duel Arena
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@Entry, 0, 0, 571, 0, 0, 1, 1, 0, 8515.134, 766.378, 559.69, 4.69, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 'CustomNPC');
-- Azshara Crater
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`) VALUES
(@Entry, 0, 0, 37, 0, 0, 1, 1, 0, 442.269, 145.869, 268.44, 5.349, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 'CustomNPC');

-- Teleportation
-- ------------------------
SET
-- Base menu
@Root = 'Images of a far-off land flash before your eyes.',

-- Option 1 (Coliseum)
@SelectIcon_Option1  = 7, 
@Select_Option1      = 'Coliseum (Dueling/BGs/Arena)',
@Explain_Option1     = 'The Coliseum is where you will find the PvP vendors and arena services. You can also challenge players to a duel here.',
@ConfirmIcon_Option1 = 9, 
@Confirm_Option1     = 'Go to the arena.',
@Map_Option1 = 571, @X_Option1 = 8515.2158, @Y_Option1 = 781.480, @Z_Option1 = 560.5, @O_Option1 = 1.57,

-- Option 2 (Azshara Crater)
@SelectIcon_Option2  = 7, 
@Select_Option2      = 'Azshara Crater (Open-world PvP)',
@Explain_Option2     = 'Azshara Crater is an open-world PvP zone full of daily quests that reward Honor Coins and other useful items.$b$bYou will find Small Dream Shards on the corpses of enemies inside Azshara Crater.$b$bAre you sure you wish to enter?',
@ConfirmIcon_Option2 = 9, 
@Confirm_Option2     = 'Enter Azshara Crater.',
@Map_Option2 = 37, @X_Option2 = 444.971, @Y_Option2 = 141.985, @Z_Option2 = 305.964, @O_Option2 = 2.232,

-- Option 3 (Dungeons)
@SelectIcon_Option3  = 7, 
@Select_Option3      = 'Dungeons (5-Player PvE)',
@Explain_Option3     = 'Each dungeon boss awards 1 Emblem of Heroism and the last boss of each dungeon awards 2.$b$bYou will find Small Dream Shards on the corpses of enemies inside dungeons and the drop rate of random rare items has been increased.',
@ConfirmIcon_Dung    = 9,
@Confirm_Dungeon1    = 'Teleport to the Deadmines.',
@Confirm_Dungeon2    = 'Teleport to Wailing Caverns.',
@Confirm_Dungeon3    = 'Teleport to Shadowfang Keep.',
@Confirm_Dungeon4    = 'Teleport to Blackfathom Deeps.',
@Confirm_Dungeon5    = 'Teleport to Stormwind Stockade.',
@Map_Dungeon1 = 36, @X_Dungeon1 = -14.006, @Y_Dungeon1 = -376.60, @Z_Dungeon1 = 60.603, @O_Dungeon1 = 3.14,
@Map_Dungeon2 = 43, @X_Dungeon2 = -160.481, @Y_Dungeon2 = 131.852, @Z_Dungeon2 = -74.02, @O_Dungeon2 = 5.69,
@Map_Dungeon3 = 33, @X_Dungeon3 = -229.135, @Y_Dungeon3 = 2109.18, @Z_Dungeon3 = 76.89, @O_Dungeon3 = 1.2,
@Map_Dungeon4 = 48, @X_Dungeon4 = -150.461, @Y_Dungeon4 = 103.694, @Z_Dungeon4 = -40.355, @O_Dungeon4 = 4.25,
@Map_Dungeon5 = 34, @X_Dungeon5 = 54.0, @Y_Dungeon5 = 0.72, @Z_Dungeon5 = -18.258, @O_Dungeon5 = 6.27,

-- Option 4 (Mall)
@SelectIcon_Option4  = 7, 
@Select_Option4      = 'Hall of Champions (Mall)',
@Explain_Option4     = 'The Hall of Champions contains class trainers, vendors, and services like the barber and auctionhouse.',
@ConfirmIcon_Option4 = 2, 
@Confirm_Option4     = 'Teleport to Hall of Champions.',
@Map_Option4 = 189, @X_Option4 = 1978.44, @Y_Option4 = -431.66, @Z_Option4 = 11.272, @O_Option4 = 3.11,

-- Back
@Back = 'Back.';


-- --------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------

-- Broadcast texts
REPLACE INTO `broadcast_text` VALUES 
-- Base menu
(@Broadcast,   0, @Root,                @Root,              1,0,0,0,0,0,0,0,1,18019),
-- Option 1
(@Broadcast+1, 0, @Explain_Option1,     @Explain_Option1,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+2, 0, @Select_Option1,      @Select_Option1,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+3, 0, @Confirm_Option1,     @Confirm_Option1,   0,0,0,0,0,0,0,0,1,18019),
-- Option 2
(@Broadcast+4, 0, @Explain_Option2,     @Explain_Option2,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+5, 0, @Select_Option2,      @Select_Option2,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+6, 0, @Confirm_Option2,     @Confirm_Option2,   0,0,0,0,0,0,0,0,1,18019),
-- Option 3
(@Broadcast+7, 0, @Explain_Option3,     @Explain_Option3,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+8, 0, @Select_Option3,      @Select_Option3,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+9, 0, @Confirm_Dungeon1,    @Confirm_Dungeon1,  0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+10,0, @Confirm_Dungeon2,    @Confirm_Dungeon2,  0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+11,0, @Confirm_Dungeon3,    @Confirm_Dungeon3,  0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+12,0, @Confirm_Dungeon4,    @Confirm_Dungeon4,  0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+13,0, @Confirm_Dungeon5,    @Confirm_Dungeon5,  0,0,0,0,0,0,0,0,1,18019),
-- Option 4
(@Broadcast+14,0, @Explain_Option4,     @Explain_Option4,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+15,0, @Select_Option4,      @Select_Option4,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+16,0, @Confirm_Option4,     @Confirm_Option4,   0,0,0,0,0,0,0,0,1,18019),
-- Back
(@Broadcast+17, 0,@Back,               @Back,              0,0,0,0,0,0,0,0,1,18019);

-- NPC texts
REPLACE INTO `npc_text` VALUES 
(@NpcText,   @Root,            @Root,            @Broadcast,  0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+1, @Explain_Option1, @Explain_Option1, @Broadcast+1,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+2, @Explain_Option2, @Explain_Option2, @Broadcast+4,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+3, @Explain_Option3, @Explain_Option3, @Broadcast+7,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+4, @Explain_Option4, @Explain_Option4, @Broadcast+14,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1);

-- Gossip menus
DELETE FROM `gossip_menu` WHERE `menuID` IN (@GossipMenu,@GossipMenu+1,@GossipMenu+2,@GossipMenu+3,@GossipMenu+4);
INSERT INTO `gossip_menu` VALUES 
(@GossipMenu, @GossipMenu),
(@GossipMenu+1, @GossipMenu+1),
(@GossipMenu+2, @GossipMenu+2),
(@GossipMenu+3, @GossipMenu+3),
(@GossipMenu+4, @GossipMenu+4);

-- Gossip menu options
DELETE FROM `gossip_menu_option` WHERE `menuID` BETWEEN @GossipMenu AND @GossipMenu+4;
INSERT INTO `gossip_menu_option` VALUES 
-- Option 1
(@GossipMenu,   1, @SelectIcon_Option4,     @Select_Option4,      @Broadcast+15,  1,1,    @GossipMenu+4,    0,0,0,NULL,0,0),
(@GossipMenu+4, 1, @ConfirmIcon_Option4,    @Confirm_Option4,     @Broadcast+16,  1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+4, 2, 0,                       @Back,                @Broadcast+17,  1,1,    @GossipMenu,      0,0,0,NULL,0,0),

-- Option 2
(@GossipMenu,   2, @SelectIcon_Option1,     @Select_Option1,      @Broadcast+2,   1,1,    @GossipMenu+1,    0,0,0,NULL,0,0),
(@GossipMenu+1, 1, @ConfirmIcon_Option1,    @Confirm_Option1,     @Broadcast+3,   1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+1, 2, 0,                       @Back,                @Broadcast+17,  1,1,    @GossipMenu,      0,0,0,NULL,0,0),

-- Option 3
(@GossipMenu,   3, @SelectIcon_Option2,     @Select_Option2,      @Broadcast+5,   1,1,    @GossipMenu+2,    0,0,0,NULL,0,0),
(@GossipMenu+2, 1, @ConfirmIcon_Option2,    @Confirm_Option2,     @Broadcast+6,   1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+2, 2, 0,                       @Back,                @Broadcast+17,  1,1,    @GossipMenu,      0,0,0,NULL,0,0),

-- Option 4
(@GossipMenu,   4, @SelectIcon_Option3,     @Select_Option3,      @Broadcast+8,   1,1,    @GossipMenu+3,    0,0,0,NULL,0,0),
(@GossipMenu+3, 1, @ConfirmIcon_Dung,       @Confirm_Dungeon1,    @Broadcast+9,   1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+3, 2, @ConfirmIcon_Dung,       @Confirm_Dungeon2,    @Broadcast+10,  1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+3, 3, @ConfirmIcon_Dung,       @Confirm_Dungeon3,    @Broadcast+11,  1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+3, 4, @ConfirmIcon_Dung,       @Confirm_Dungeon4,    @Broadcast+12,  1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+3, 5, @ConfirmIcon_Dung,       @Confirm_Dungeon5,    @Broadcast+13,  1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+3, 6, 0,                       @Back,                @Broadcast+17,  1,1,    @GossipMenu,      0,0,0,NULL,0,0);

-- Smart scripts
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Entry;
INSERT INTO `smart_scripts` 
(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@Entry, 0, 1, 0, 62, 0, 100, 0, @GossipMenu+1, 1, 0, 0, 0, 62, @Map_Option1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Option1, @Y_Option1, @Z_Option1, @O_Option1, 'Option1'),
(@Entry, 0, 2, 0, 62, 0, 100, 0, @GossipMenu+2, 1, 0, 0, 0, 62, @Map_Option2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Option2, @Y_Option2, @Z_Option2, @O_Option2, 'Option2'),
(@Entry, 0, 3, 0, 62, 0, 100, 0, @GossipMenu+3, 1, 0, 0, 0, 62, @Map_Dungeon1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Dungeon1, @Y_Dungeon1, @Z_Dungeon1, @O_Dungeon1, 'Dungeon1'),
(@Entry, 0, 4, 0, 62, 0, 100, 0, @GossipMenu+3, 2, 0, 0, 0, 62, @Map_Dungeon2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Dungeon2, @Y_Dungeon2, @Z_Dungeon2, @O_Dungeon2, 'Dungeon2'),
(@Entry, 0, 5, 0, 62, 0, 100, 0, @GossipMenu+3, 3, 0, 0, 0, 62, @Map_Dungeon3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Dungeon3, @Y_Dungeon3, @Z_Dungeon3, @O_Dungeon3, 'Dungeon3'),
(@Entry, 0, 6, 0, 62, 0, 100, 0, @GossipMenu+3, 4, 0, 0, 0, 62, @Map_Dungeon4, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Dungeon4, @Y_Dungeon4, @Z_Dungeon4, @O_Dungeon4, 'Dungeon4'),
(@Entry, 0, 7, 0, 62, 0, 100, 0, @GossipMenu+3, 5, 0, 0, 0, 62, @Map_Dungeon5, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Dungeon5, @Y_Dungeon5, @Z_Dungeon5, @O_Dungeon5, 'Dungeon5'),
(@Entry, 0, 8, 0, 62, 0, 100, 0, @GossipMenu+4, 1, 0, 0, 0, 62, @Map_Option4, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Option4, @Y_Option4, @Z_Option4, @O_Option4, 'Option4');
