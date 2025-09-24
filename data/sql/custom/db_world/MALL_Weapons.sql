SET
@WandVendor         := 28994,
@StaffVendor        := 29494,
@GunVendor          := 29476,
@BowVendor          := 28989,
@AmmoVendor         := 29493,
@DaggerFistVendor   := 29499,
@SwordsVendor       := 28991,
@AxePolearmVendor   := 29496,
@MacesVendor        := 29497;

DELETE FROM `npc_vendor` WHERE `entry` IN (@WandVendor,@StaffVendor,@GunVendor,@BowVendor,@AmmoVendor,@DaggerFistVendor,@SwordsVendor,@AxePolearmVendor,@MacesVendor); INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES
-- ---------------------------------------------------------------------------
-- __          __                _  __      __               _              
-- \ \        / /               | | \ \    / /              | |             
--  \ \  /\  / /__ _  _ __    __| |  \ \  / /___  _ __    __| |  ___   _ __ 
--   \ \/  \/ // _` || '_ \  / _` |   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--    \  /\  /| (_| || | | || (_| |    \  /|  __/| | | || (_| || (_) || |   
--     \/  \/  \__,_||_| |_| \__,_|     \/  \___||_| |_| \__,_| \___/ |_|   
-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
(@WandVendor, 1,	39426),	/* Wand of the Archlich */
(@WandVendor, 1,	39712),	/* Gemmed Wand of the Nerubians */
(@WandVendor, 1,	40245),	/* Fading Glow */
(@WandVendor, 1,	40284),	/* Plague Igniter */
(@WandVendor, 1,	40335),	/* Touch of Horror */
(@WandVendor, 1,	42503),	/* Furious Gladiator's Touch of Defeat */
(@WandVendor, 1,	42514),	/* Furious Gladiator's Baton of Light */
(@WandVendor, 1,	42520),	/* Furious Gladiator's Piercing Touch */

--   _____                          _       __      __               _              
--  / ____|                        | |      \ \    / /              | |             
-- | (___ __      __ ___   _ __  __| | ___   \ \  / /___  _ __    __| |  ___   _ __ 
--  \___ \\ \ /\ / // _ \ | '__|/ _` |/ __|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--  ____) |\ V  V /| (_) || |  | (_| |\__ \    \  /|  __/| | | || (_| || (_) || |   
-- |_____/  \_/\_/  \___/ |_|   \__,_||___/     \/  \___||_| |_| \__,_| \___/ |_|   
-- ----------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------
(@SwordsVendor, 1, 39730),	/* Widow's Fury */
(@SwordsVendor, 1, 40336),	/* Life and Death */
(@SwordsVendor, 1, 40345),	/* Broken Promise */
(@SwordsVendor, 1, 40407),	/* Silent Crusader */
(@SwordsVendor, 1, 40491),	/* Hailstorm */
(@SwordsVendor, 1, 42286),	/* Furious Gladiator's Slicer */
(@SwordsVendor, 1, 42291),	/* Furious Gladiator's Quickblade */
(@SwordsVendor, 2, 40343),	/* Armageddon */
(@SwordsVendor, 2, 42333),	/* Furious Gladiator's Greatsword */

--                           __ _____        _                                __      __               _              
--     /\                   / /|  __ \      | |                               \ \    / /              | |             
--    /  \   __  __ ___    / / | |__) |___  | |  ___   __ _  _ __  _ __ ___    \ \  / /___  _ __    __| |  ___   _ __ 
--   / /\ \  \ \/ // _ \  / /  |  ___// _ \ | | / _ \ / _` || '__|| '_ ` _ \    \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--  / ____ \  >  <|  __/ / /   | |   | (_) || ||  __/| (_| || |   | | | | | |    \  /|  __/| | | || (_| || (_) || |   
-- /_/    \_\/_/\_\\___|/_/    |_|    \___/ |_| \___| \__,_||_|   |_| |_| |_|     \/  \___||_| |_| \__,_| \___/ |_|   
-- --------------------------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------
(@AxePolearmVendor, 1, 42209),	/* Furious Gladiator's Cleaver */
(@AxePolearmVendor, 1, 42228),	/* Furious Gladiator's Hacker */
(@AxePolearmVendor, 1, 42233),	/* Furious Gladiator's Chopper */
(@AxePolearmVendor, 2, 39417),	/* Death's Bite */
(@AxePolearmVendor, 2, 42318),	/* Furious Gladiator's Decapitator */
(@AxePolearmVendor, 3, 40208),	/* Cryptfiend's Bite */
(@AxePolearmVendor, 3, 40497),	/* Black Ice */
(@AxePolearmVendor, 3, 42328),	/* Furious Gladiator's Pike */

--  __  __                         __      __               _              
-- |  \/  |                        \ \    / /              | |             
-- | \  / |  __ _   ___  ___  ___   \ \  / /___  _ __    __| |  ___   _ __ 
-- | |\/| | / _` | / __|/ _ \/ __|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
-- | |  | || (_| || (__|  __/\__ \    \  /|  __/| | | || (_| || (_) || |   
-- |_|  |_| \__,_| \___|\___||___/     \/  \___||_| |_| \__,_| \___/ |_|   
-- -------------------------------------------------------------------------
-- -------------------------------------------------------------------------
(@MacesVendor, 1, 39423),	/* Hammer of the Astral Plane */
(@MacesVendor, 1, 40189),	/* Angry Dread */
(@MacesVendor, 1, 40244),	/* The Impossible Dream */
(@MacesVendor, 1, 40264),	/* Split Greathammer */
(@MacesVendor, 1, 40488),	/* Ice Spire Scepter */
(@MacesVendor, 1, 42276),	/* Furious Gladiator's Pummeler */
(@MacesVendor, 1, 42281),	/* Furious Gladiator's Bonecracker */
(@MacesVendor, 1, 42353),	/* Furious Gladiator's Gavel */
(@MacesVendor, 2, 39758),	/* The Jawbone */
(@MacesVendor, 2, 40406),	/* Inevitable Defeat */
(@MacesVendor, 2, 42323),	/* Furious Gladiator's Bonegrinder */

--   _____  _           __   __  __      __               _              
--  / ____|| |         / _| / _| \ \    / /              | |             
-- | (___  | |_  __ _ | |_ | |_   \ \  / /___  _ __    __| |  ___   _ __ 
--  \___ \ | __|/ _` ||  _||  _|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--  ____) || |_| (_| || |  | |      \  /|  __/| | | || (_| || (_) || |   
-- |_____/  \__|\__,_||_|  |_|       \/  \___||_| |_| \__,_| \___/ |_|   
-- ------------------------------------------------------------------------
-- ------------------------------------------------------------------------
(@StaffVendor, 1, 39422),	/* Staff of the Plaguehound */
(@StaffVendor, 1, 40233),	/* The Undeath Carrier */
(@StaffVendor, 1, 40280),	/* Origin of Nightmares */
(@StaffVendor, 1, 40300),	/* Spire of Sunset */
(@StaffVendor, 1, 40348),	/* Damnation */
(@StaffVendor, 1, 40455),	/* Staff of Restraint */
(@StaffVendor, 1, 40489),	/* Greatstaff of the Nexus */
(@StaffVendor, 1, 42364),	/* Furious Gladiator's Battle Staff */
(@StaffVendor, 1, 42385),	/* Furious Gladiator's Energy Staff */
(@StaffVendor, 1, 42391),	/* Furious Gladiator's Staff */
(@StaffVendor, 1, 44421),	/* Furious Gladiator's War Staff */
(@StaffVendor, 1, 44422),	/* Furious Gladiator's Focus Staff */

--  _____                                      __ ______  _       _    __      __               _              
-- |  __ \                                    / /|  ____|(_)     | |   \ \    / /              | |             
-- | |  | |  __ _   __ _   __ _   ___  _ __  / / | |__    _  ___ | |_   \ \  / /___  _ __    __| |  ___   _ __ 
-- | |  | | / _` | / _` | / _` | / _ \| '__|/ /  |  __|  | |/ __|| __|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
-- | |__| || (_| || (_| || (_| ||  __/| |  / /   | |     | |\__ \| |_     \  /|  __/| | | || (_| || (_) || |   
-- |_____/  \__,_| \__, | \__, | \___||_| /_/    |_|     |_||___/ \__|     \/  \___||_| |_| \__,_| \___/ |_|   
-- ---------------- __/ |- __/ |--------------------------------------------------------------------------------
-- ----------------|___/ -|___/ --------------------------------------------------------------------------------
(@DaggerFistVendor, 1, 39420),	/* Anarchy */
(@DaggerFistVendor, 1, 39424),	/* The Soulblade */
(@DaggerFistVendor, 1, 39714),	/* Webbed Death */
(@DaggerFistVendor, 1, 40281),	/* Twilight Mist */
(@DaggerFistVendor, 1, 40368),	/* Murder */
(@DaggerFistVendor, 1, 40408),	/* Haunting Call */
(@DaggerFistVendor, 1, 42243),	/* Furious Gladiator's Shanker */
(@DaggerFistVendor, 1, 42249),	/* Furious Gladiator's Shiv */
(@DaggerFistVendor, 1, 42256),	/* Furious Gladiator's Mutilator */
(@DaggerFistVendor, 1, 42347),	/* Furious Gladiator's Spellblade */
(@DaggerFistVendor, 2, 39416),	/* Kel'Thuzad's Reach */
(@DaggerFistVendor, 2, 39763),	/* Wraith Strike */
(@DaggerFistVendor, 2, 40239),	/* The Hand of Nerub */
(@DaggerFistVendor, 2, 42261),	/* Furious Gladiator's Right Ripper */
(@DaggerFistVendor, 2, 42266),	/* Furious Gladiator's Left Render */
(@DaggerFistVendor, 2, 42271),	/* Furious Gladiator's Left Ripper */

--   _____                __      __               _              
--  / ____|               \ \    / /              | |             
-- | |  __  _   _  _ __    \ \  / /___  _ __    __| |  ___   _ __ 
-- | | |_ || | | || '_ \    \ \/ // _ \| '_ \  / _` | / _ \ | '__|
-- | |__| || |_| || | | |    \  /|  __/| | | || (_| || (_) || |   
--  \_____| \__,_||_| |_|     \/  \___||_| |_| \__,_| \___/ |_|   
-- -----------------------------------------------------------------
-- -----------------------------------------------------------------
(@GunVendor, 1, 39419),	/* Nerubian Conquerer */
(@GunVendor, 1, 42486),	/* Furious Gladiator's Rifle */
(@GunVendor, 2, 40190),	/* Spinning Fate */
(@GunVendor, 2, 42451),	/* Furious Gladiator's War Edge */

--  ____                   __      __               _              
-- |  _ \                  \ \    / /              | |             
-- | |_) |  ___ __      __  \ \  / /___  _ __    __| |  ___   _ __ 
-- |  _ <  / _ \\ \ /\ / /   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
-- | |_) || (_) |\ V  V /     \  /|  __/| | | || (_| || (_) || |   
-- |____/  \___/  \_/\_/       \/  \___||_| |_| \__,_| \___/ |_|   
-- ------------------------------------------------------------------
-- ------------------------------------------------------------------
(@BowVendor, 1, 40265),	/* Arrowsong */
(@BowVendor, 1, 42491),	/* Furious Gladiator's Longbow */
(@BowVendor, 2, 40346),	/* Final Voyage */
(@BowVendor, 2, 42496),	/* Furious Gladiator's Heavy Crossbow */

--                                         __      __               _              
--     /\                                  \ \    / /              | |             
--    /  \    _ __ ___   _ __ ___    ___    \ \  / /___  _ __    __| |  ___   _ __ 
--   / /\ \  | '_ ` _ \ | '_ ` _ \  / _ \    \ \/ // _ \| '_ \  / _` | / _ \ | '__|
--  / ____ \ | | | | | || | | | | || (_) |    \  /|  __/| | | || (_| || (_) || |   
-- /_/    \_\|_| |_| |_||_| |_| |_| \___/      \/  \___||_| |_| \__,_| \___/ |_|   
-- ----------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------
(@AmmoVendor, 1, 52020), /* Shatter Rounds */
(@AmmoVendor, 1, 52021); /* Iceblade Arrow */

/* SET PRICES */
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` IN (@WandVendor,@StaffVendor,@GunVendor,@BowVendor,@AmmoVendor,@DaggerFistVendor,@SwordsVendor,@AxePolearmVendor,@MacesVendor);