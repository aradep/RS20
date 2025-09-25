SET
@MountVendor = 32216,

SET
@Emblem10   = 2484,
@Emblem15   = 2525,
@Emblem20   = 2706,
@Emblem25   = 2523,
@Emblem30   = 2529,
@Emblem35   = 2531,
@Emblem40   = 2524,
@Emblem45   = 2528,
@Emblem50   = 2532,
@Emblem60   = 2526,
@Emblem65   = 2551,
@Emblem75   = 2527,
@Emblem80   = 2533,
@Emblem100  = 2530,
@Emblem200  = 2550;

@EmblemofValor_x1 = 2589,
@EmblemofValor_x15 = 2638,
@EmblemofValor_x25 = 2534,
@EmblemofValor_x30 = 2540,
@EmblemofValor_x40 = 2536,
@EmblemofValor_x45 = 2539,
@EmblemofValor_x60 = 2535,
@EmblemofValor_x60 = 2537,
@EmblemofValor_x75 = 2538,
@Champions_Writ_x1 = 2639,

@40000_Honor = 2403;

--  __  __                       _    __      __               _              
-- |  \/  |                     | |   \ \    / /              | |             
-- | \  / |  ___   _   _  _ __  | |_   \ \  / /___  _ __    __| |  ___   _ __ 
-- | |\/| | / _ \ | | | || '_ \ | __|   \ \/ // _ \| '_ \  / _` | / _ \ | '__|
-- | |  | || (_) || |_| || | | || |_     \  /|  __/| | | || (_| || (_) || |   
-- |_|  |_| \___/  \__,_||_| |_| \__|     \/  \___||_| |_| \__,_| \___/ |_|   
-- ----------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------
DELETE FROM npc_vendor WHERE Entry=@MountVendor; INSERT INTO npc_vendor 
-- ----------------------------------------------------------------------------------------------
(Entry,             Slot,   ExtendedCost,           Item) VALUES 
-- ----------------------------------------------------------------------------------------------

/* Starting Mounts */
(@MountVendor,      1,      @EmblemofValor_x1,    /*Reins of the Swift Frostsaber*/18766),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Reins of the Swift Mistsaber*/18767),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Green Mechanostrider*/18772),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift White Mechanostrider*/18773),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Yellow Mechanostrider*/18774),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Palomino*/18776),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Brown Steed*/18777),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift White Steed*/18778),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift White Ram*/18785),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Brown Ram*/18786),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Gray Ram*/18787),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Blue Raptor*/18788),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Olive Raptor*/18789),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Orange Raptor*/18790),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Purple Skeletal Warhorse*/18791),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Great White Kodo*/18793),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Great Brown Kodo*/18794),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Great Gray Kodo*/18795),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Horn of the Swift Brown Wolf*/18796),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Horn of the Swift Timber Wolf*/18797),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Horn of the Swift Gray Wolf*/18798),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Reins of the Swift Stormsaber*/18902),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Pink Hawkstrider*/28936),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Green Hawkstrider*/29223),
(@MountVendor,      1,      @EmblemofValor_x1,    /*Swift Purple Hawkstrider*/29224),


/* Rare Mounts */
(@MountVendor,      3,      @EmblemofValor_x30,   /*Argent Warhorse*/47180),
(@MountVendor,      3,      @EmblemofValor_x30,   /*The Horsemans Reins*/37012),
(@MountVendor,      3,      @EmblemofValor_x30,   /*Fiery Warhorses Reins*/30480),
(@MountVendor,      3,      @EmblemofValor_x30,   /*Swift White Hawkstrider*/35513),
/* Special Mounts */
(@MountVendor,      4,      @EmblemofValor_x45,   /*Celestial Steed*/54811),
(@MountVendor,      4,      @EmblemofValor_x45,   /*Swift Zhevra*/37719),
(@MountVendor,      4,      @EmblemofValor_x45,   /*Big Battle Bear*/49282),
(@MountVendor,      4,      @EmblemofValor_x45,   /*Polar Bear Harness*/40777),

(@MountVendor,      5,      @EmblemofValor_x60,   /*Reins of the Raven Lord*/32768),
(@MountVendor,      5,      @EmblemofValor_x60,   /*Amani War Bear*/33809),
(@MountVendor,      5,      @EmblemofValor_x60,   /*Swift Razzashi Raptor*/19872),
(@MountVendor,      5,      @EmblemofValor_x60,   /*Swift Zulian Tiger*/19902),

(@MountVendor,      6,      @EmblemofValor_x75,   /*Reins of the Crimson Deathcharger*/52200),
(@MountVendor,      6,      @EmblemofValor_x75,   /*Crusaders White Warhorse*/49096),
(@MountVendor,      6,      @EmblemofValor_x75,   /*Crusaders Black Warhorse*/49098),
(@MountVendor,      6,      @EmblemofValor_x75,   /*Reins of the Grand Black War Mammoth*/44083),
(@MountVendor,      6,      @EmblemofValor_x75,   /*Reins of the Grand Ice Mammoth*/44086),
(@MountVendor,      6,      @EmblemofValor_x75,   /*Reins of the Grand Black War Mammoth*/43959),
(@MountVendor,      6,      @EmblemofValor_x75,   /*Reins of the Grand Ice Mammoth*/43961),

/* PvP Mounts */
(@MountVendor,      7,      @40000_Honor,     /*Black War Kodo,*/29466),
(@MountVendor,      7,      @40000_Honor,     /*Black War Ram,*/29467),
(@MountVendor,      7,      @40000_Honor,     /*Black War Steed Bridle,*/29468),
(@MountVendor,      7,      @40000_Honor,     /*Horn of the Black War Wolf,*/29469),
(@MountVendor,      7,      @40000_Honor,     /*Reins of the Black War Tiger,*/29471),
(@MountVendor,      7,      @40000_Honor,     /*Whistle of the Black War Raptor,*/29472),
(@MountVendor,      7,      @40000_Honor,     /*Reins of the Black War Elekk,*/35906),
(@MountVendor,      7,      @40000_Honor,     /*Reins of the Black War Bear,*/44223),
(@MountVendor,      7,      @40000_Honor,     /*Reins of the Black War Bear,*/44224),
(@MountVendor,      7,      @40000_Honor,     /*Swift Warstrider*/34129),
(@MountVendor,      7,      @40000_Honor,     /*Reins of the Black War Mammoth,*/44077),
(@MountVendor,      7,      @40000_Honor,     /*Reins of the Black War Mammoth,*/43956),
(@MountVendor,      7,      @40000_Honor,     /*Black Battlestrider*/29465),

(@MountVendor,      8,      @Champions_Writ_x1,     /*Black Qiraji Resonating Crystal*/21176),
(@MountVendor,      8,      @Champions_Writ_x1,     /*Reins of the Swift Spectral Tiger*/33225),
(@MountVendor,      8,      @Champions_Writ_x1,     /*Magic Rooster Egg*/46778),
(@MountVendor,      8,      @Champions_Writ_x1,     /*Big Blizzard Bear*/43599),
(@MountVendor,      8,      @Champions_Writ_x1,     /*Invincibles Reins*/50818),
(@MountVendor,      8,      @Champions_Writ_x1,     /*Reins of the Travelers Tundra Mammoth*/44234),
(@MountVendor,      8,      @Champions_Writ_x1,     /*Reins of the Travelers Tundra Mammoth*/44235);