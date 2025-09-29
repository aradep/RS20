-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Azshara Crater Smart Scripts
-- -----------------------------------

-- Giant elemental lords emoting attack
DELETE FROM `smart_scripts` WHERE `entryorguid` = 51502;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (51502, 0, 0, 0, 1, 0, 100, 0, 1800, 2500, 1800, 2500, 0, 11, 61480, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Out of Combat - Cast Fake Swing');
DELETE FROM `smart_scripts` WHERE `entryorguid` = 54435;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54435, 0, 0, 0, 1, 0, 100, 0, 1800, 2500, 1800, 2500, 0, 11, 61480, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Out of Combat - Cast Fake Swing');

-- Mage Peacekeepers
DELETE FROM `smart_scripts` WHERE `entryorguid`=4624;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES    (4624, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 11, 18950, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kirin Tor Guardian - Cast Invisibility and Stealth Detection'),
(4624, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 11, 58534, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Kirin Tor Guardian - On Aggro - Cast Deep Freeze'),
(4624, 0, 3, 0, 0, 0, 100, 0, 0, 3000, 1600, 2200, 0, 11, 46194, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Kirin Tor Guardian - In Combat - Cast Ice Lance'),
(4624, 0, 4, 0, 0, 0, 100, 0, 0, 3000, 3000, 5000, 0, 11, 42931, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Kirin Tor Guardian - In Combat - Cast Cone of Cold');

-- Orc Peacekeepers
DELETE FROM `smart_scripts` WHERE `entryorguid`=64624;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES    (64624, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 11, 18950, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc Guardian - Cast Invisibility and Stealth Detection'),
(64624, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 11, 22120, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc Guardian - On Aggro - Cast Charge'),
(64624, 0, 3, 0, 0, 0, 100, 0, 0, 3000, 2600, 3200, 0, 11, 26211, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc Guardian - In Combat - Cast Hamstring'),
(64624, 0, 4, 0, 0, 0, 100, 0, 0, 3000, 3000, 5000, 0, 11, 22427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Orc Guardian - In Combat - Cast Concussion Blow');
