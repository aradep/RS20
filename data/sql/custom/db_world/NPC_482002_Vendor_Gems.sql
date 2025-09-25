-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall - Gems
-- -----------------------------------

-- Creature
SET
@Entry      = 482002,
@Model      = 27216,
@Scale      = 1,
@Name       = "Vendor NPC",
@Title      = "Priceless Gems",
@Icon       = "Buy", -- Directions, Gunner, vehicleCursor, Driver, Attack, Buy, Speak, Pickup, Interact, Trainer, Taxi, Repair, LootAll --
@Rank       = 0, -- 0	Normal, 1:Elite, 2:Rare Elite, 3:Boss, 4:Rare --
@Type       = 7, -- 0:None, 1:Beast, 2:Dragonkin, 3:Demon, 4:Elemental, 5:Giant, 6:Undead, 7:Humanoid, 8:Critter, 9:Mechanical --
@Class      = 1,
@Flags      = 128, -- 128: Normal vendor, 4224: Repair vendor
@Level      = 23,
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
(@Entry,    4,          0,                40129), -- Sovereign Dreadstone
(@Entry,    4,          0,                40130), -- Shifting Dreadstone
(@Entry,    4,          0,                40131), -- Tenuous Dreadstone
(@Entry,    4,          0,                40132), -- Glowing Dreadstone
(@Entry,    4,          0,                40133), -- Purified Dreadstone
(@Entry,    4,          0,                40134), -- Royal Dreadstone
(@Entry,    4,          0,                40135), -- Mysterious Dreadstone
(@Entry,    4,          0,                40136), -- Balanced Dreadstone
(@Entry,    4,          0,                40137), -- Infused Dreadstone
(@Entry,    4,          0,                40138), -- Regal Dreadstone
(@Entry,    4,          0,                40139), -- Defender's Dreadstone
(@Entry,    4,          0,                40140), -- Puissant Dreadstone
(@Entry,    4,          0,                40141), -- Guardian's Dreadstone
(@Entry,    5,          0,                40164), -- Timeless Eye of Zul
(@Entry,    5,          0,                40165), -- Jagged Eye of Zul
(@Entry,    5,          0,                40166), -- Vivid Eye of Zul
(@Entry,    5,          0,                40167), -- Enduring Eye of Zul
(@Entry,    5,          0,                40168), -- Steady Eye of Zul
(@Entry,    5,          0,                40169), -- Forceful Eye of Zul
(@Entry,    5,          0,                40170), -- Seer's Eye of Zul
(@Entry,    5,          0,                40171), -- Misty Eye of Zul
(@Entry,    5,          0,                40172), -- Shining Eye of Zul
(@Entry,    5,          0,                40173), -- Turbid Eye of Zul
(@Entry,    5,          0,                40174), -- Intricate Eye of Zul
(@Entry,    5,          0,                40175), -- Dazzling Eye of Zul
(@Entry,    5,          0,                40176), -- Sundered Eye of Zul
(@Entry,    5,          0,                40177), -- Lambent Eye of Zul
(@Entry,    5,          0,                40178), -- Opaque Eye of Zul
(@Entry,    5,          0,                40179), -- Energized Eye of Zul
(@Entry,    5,          0,                40180), -- Radiant Eye of Zul
(@Entry,    5,          0,                40181), -- Tense Eye of Zul
(@Entry,    5,          0,                40182), -- Shattered Eye of Zul
(@Entry,    6,          0,                40142), -- Inscribed Ametrine
(@Entry,    6,          0,                40143), -- Etched Ametrine
(@Entry,    6,          0,                40144), -- Champion's Ametrine
(@Entry,    6,          0,                40145), -- Resplendent Ametrine
(@Entry,    6,          0,                40146), -- Fierce Ametrine
(@Entry,    6,          0,                40147), -- Deadly Ametrine
(@Entry,    6,          0,                40148), -- Glinting Ametrine
(@Entry,    6,          0,                40149), -- Lucent Ametrine
(@Entry,    6,          0,                40150), -- Deft Ametrine
(@Entry,    6,          0,                40151), -- Luminous Ametrine
(@Entry,    6,          0,                40152), -- Potent Ametrine
(@Entry,    6,          0,                40153), -- Veiled Ametrine
(@Entry,    6,          0,                40154), -- Durable Ametrine
(@Entry,    6,          0,                40155), -- Reckless Ametrine
(@Entry,    6,          0,                40156), -- Wicked Ametrine
(@Entry,    6,          0,                40157), -- Pristine Ametrine
(@Entry,    6,          0,                40158), -- Empowered Ametrine
(@Entry,    6,          0,                40159), -- Stark Ametrine
(@Entry,    6,          0,                40160), -- Stalwart Ametrine
(@Entry,    6,          0,                40161), -- Glimmering Ametrine
(@Entry,    6,          0,                40162), -- Accurate Ametrine
(@Entry,    6,          0,                40163); -- Resolute Ametrine
-- ----------------------------------------------------------------------------------------


Bold Bloodstone', 39900, 1141);
Delicate Bloodstone', 39905, 1144);
Bright Bloodstone', 39906, 1145);
Subtle Bloodstone', 39907, 1146);
Flashing Bloodstone', 39908, 1147);
Fractured Bloodstone', 39909, 1148);
Precise Bloodstone', 39910, 1149);
Runed Bloodstone', 39911, 1150);
Brilliant Sun Crystal', 39912, 1151);
Smooth Sun Crystal', 39914, 1152);
Rigid Sun Crystal', 39915, 1153);
Thick Sun Crystal', 39916, 1154);
Mystic Sun Crystal', 39917, 1155);
Quick Sun Crystal', 39918, 1156);
Solid Chalcedony', 39919, 1157);
Sparkling Chalcedony', 39920, 1158);
Lustrous Chalcedony', 39927, 1159);
Stormy Chalcedony', 39932, 1160);
Puissant Shadow Crystal', 39933, 1161);
Sovereign Shadow Crystal', 39934, 1162);
Shifting Shadow Crystal', 39935, 1163);
Glowing Shadow Crystal', 39936, 1164);
Balanced Shadow Crystal', 39937, 1165);
Regal Shadow Crystal', 39938, 1166);
Defender\'s Shadow Crystal', 39939, 1167);
Guardian\'s Shadow Crystal', 39940, 1168);
Purified Shadow Crystal', 39941, 1169);
Tenuous Shadow Crystal', 39942, 1170);
Royal Shadow Crystal', 39943, 1171);
Infused Shadow Crystal', 39944, 1172);
Mysterious Shadow Crystal', 39945, 1173);
Luminous Huge Citrine', 39946, 1174);
Inscribed Huge Citrine', 39947, 1175);
Etched Huge Citrine', 39948, 1176);
Champion\'s Huge Citrine', 39949, 1177);
Resplendent Huge Citrine', 39950, 1178);
Fierce Huge Citrine', 39951, 1179);
Deadly Huge Citrine', 39952, 1180);
Glinting Huge Citrine', 39953, 1181);
Lucent Huge Citrine', 39954, 1182);
Deft Huge Citrine', 39955, 1183);
Potent Huge Citrine', 39956, 1184);
Veiled Huge Citrine', 39957, 1185);
Durable Huge Citrine', 39958, 1186);
Reckless Huge Citrine', 39959, 1187);
Wicked Huge Citrine', 39960, 1188);
Pristine Huge Citrine', 39961, 1189);
Empowered Huge Citrine', 39962, 1190);
Stark Huge Citrine', 39963, 1191);
Stalwart Huge Citrine', 39964, 1192);
Glimmering Huge Citrine', 39965, 1193);
Accurate Huge Citrine', 39966, 1194);
Resolute Huge Citrine', 39967, 1195);
Timeless Dark Jade', 39968, 1196);
Jagged Dark Jade', 39974, 1197);
Vivid Dark Jade', 39975, 1198);
Enduring Dark Jade', 39976, 1199);
Steady Dark Jade', 39977, 1200);
Forceful Dark Jade', 39978, 1201);
Seer\'s Dark Jade', 39979, 1202);
Misty Dark Jade', 39980, 1203);
Shining Dark Jade', 39981, 1204);
Turbid Dark Jade', 39982, 1205);
Intricate Dark Jade', 39983, 1206);
Dazzling Dark Jade', 39984, 1207);
Sundered Dark Jade', 39985, 1208);
Lambent Dark Jade', 39986, 1209);
Opaque Dark Jade', 39988, 1210);
Energized Dark Jade', 39989, 1211);
Radiant Dark Jade', 39990, 1212);
Tense Dark Jade', 39991, 1213);
Shattered Dark Jade', 39992, 1214);
Enchanted Pearl', 42701, 1529);


-- Gems
UPDATE `item_template` SET `buyprice` = 1000000, `flags` = 4096 WHERE `class` = 3 AND `itemLevel` = 80 AND `sellprice` = 90000;
