-- -----------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
-- -----------------------------------
-- Mall Ranged Weapon & Ammo Vendor
-- -----------------------------------

SET
@GunVendor          := 29476,
@BowVendor          := 28989,
@AmmoVendor         := 29493,

DELETE FROM `npc_vendor` WHERE `entry` IN (@WandVendor,@StaffVendor,@GunVendor,@BowVendor,@AmmoVendor,@DaggerFistVendor,@SwordsVendor,@AxePolearmVendor,@MacesVendor); INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES

-- Gun Vendor
(@GunVendor, 1, 39419),	-- Nerubian Conquerer
(@GunVendor, 1, 42486),	-- Furious Gladiator's Rifle
(@GunVendor, 2, 40190),	-- Spinning Fate
(@GunVendor, 2, 42451),	-- Furious Gladiator's War Edge

-- Bow Vendor
(@BowVendor, 1, 40265),	-- Arrowsong
(@BowVendor, 1, 42491),	-- Furious Gladiator's Longbow
(@BowVendor, 2, 40346),	-- Final Voyage
(@BowVendor, 2, 42496),	-- Furious Gladiator's Heavy Crossbow

-- Ammo Vendor
(@AmmoVendor, 1, 52020), -- Shatter Rounds
(@AmmoVendor, 1, 52021); -- Iceblade Arrow

-- Set Prices to Buy 0/Sell 1
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` IN (@WandVendor,@StaffVendor,@GunVendor,@BowVendor,@AmmoVendor,@DaggerFistVendor,@SwordsVendor,@AxePolearmVendor,@MacesVendor);