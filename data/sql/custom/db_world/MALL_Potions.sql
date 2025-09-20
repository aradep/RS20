--------------------------------------
-- Dragonshrine Instant-20 Funserver
-- Made for AzerothCore 3.3.5a
-- Discord: @Degen
-- 2025
--------------------------------------
-- Mall Potion & Elixir Vendors
--------------------------------------

-- Vendors
SET
@PotionVendor  = 28725,
@ElixirVendor  = 28703,
@OrbVendor = 29512,

@Frozen_Orb_x1 = 2985,
@Frozen_Orb_x4 = 2987,
@Frozen_Orb_x6 = 2986,
@Abyss_Crystal_x5 = 2584;

-- Potion Vendor
DELETE FROM npc_vendor WHERE Entry = @PotionVendor; INSERT INTO npc_vendor 
-- ----------------------------------------------------------------------------------------
(Entry,             Slot,   Cost,               Item) VALUES
-- ----------------------------------------------------------------------------------------
(@PotionVendor,     1,      0,                  929),  -- Healing Potion
(@PotionVendor,     2,      0,                  3827), -- Mana Potion
(@PotionVendor,     3,      0,                  7676), -- Thistle Tea
(@PotionVendor,     4,      0,                  5631), -- Rage Potion
(@PotionVendor,     5,      @Frozen_Orb_x1,     2459), -- Swiftness Potion
(@PotionVendor,     5,      @Frozen_Orb_x1,     5634), -- Free Action Potion
(@PotionVendor,     5,      @Frozen_Orb_x1,     6048), -- Shadow Protection Potion
(@PotionVendor,     5,      @Frozen_Orb_x1,     6051), -- Holy Protection Potion
(@PotionVendor,     5,      @Frozen_Orb_x1,     1450), -- Potion of Fervor
(@PotionVendor,     5,      @Frozen_Orb_x1,     6372), -- Swim Speed Potion
(@PotionVendor,     5,      @Frozen_Orb_x1,     3384); -- Minor Magic Resistance Potion

-- Elixir Vendor
DELETE FROM npc_vendor WHERE Entry = @ElixirVendor; INSERT INTO npc_vendor 
-- ----------------------------------------------------------------------------------------
(Entry,             Slot,   Cost,               Item) VALUES
-- ----------------------------------------------------------------------------------------
(@ElixirVendor,     1,      @Frozen_Orb_x1,     3391),  -- Elixir of Ogre's Strength
(@ElixirVendor,     2,      @Frozen_Orb_x1,     6662),  -- Elixir of Giant Growth
(@ElixirVendor,     3,      @Frozen_Orb_x1,     3390),  -- Elixir of Lesser Agility
(@ElixirVendor,     4,      @Frozen_Orb_x1,     45621), -- Elixir of Minor Accuracy
(@ElixirVendor,     5,      @Frozen_Orb_x1,     6373),  -- Elixir of Firepower
(@ElixirVendor,     6,      @Frozen_Orb_x1,     3383),  -- Elixir of Wisdom
(@ElixirVendor,     7,      @Frozen_Orb_x1,     3389),  -- Elixir of Defense
(@ElixirVendor,     8,      @Frozen_Orb_x1,     3825),  -- Elixir of Fortitude
(@ElixirVendor,     9,      @Frozen_Orb_x1,     3388),  -- Strong Troll's Blood Elixir
(@ElixirVendor,    10,      @Frozen_Orb_x1,     5996);  -- Elixir of Water Breathing

-- Items
-- Potions
UPDATE item_template SET quality=1, stackable=5, buyprice=0, sellprice=0, buycount=5, maxcount=0, requiredlevel=0, requiredskill=0, requiredskillrank=0, bonding=0 WHERE entry IN (
929,	-- Healing Potion
3827;	-- Mana Potion
2459,   -- Swiftness Potion
7676,   -- Thistle Tea
5631,   -- Rage Potion
5634,   -- Free Action Potion
6048,   -- Shadow Protection Potion
6051,   -- Holy Protection Potion
1450,   -- Potion of Fervor
6372,   -- Swim Speed Potion
3384   -- Minor Magic Resistance Potion
);

-- Elixirs
UPDATE item_template SET quality=2, stackable=10, buyprice=0, sellprice=0, buycount=3, maxcount=0, requiredlevel=0, requiredskill=0, requiredskillrank=0, bonding=0 WHERE entry IN (
3391, -- Elixir of Ogre's Strength
6373, -- Elixir of Firepower
3390, -- Elixir of Lesser Agility
3389, -- Elixir of Defense
3388, -- Strong Troll's Blood Elixir
45621, -- Elixir of Minor Accuracy
3383, -- Elixir of Wisdom
6662, -- Elixir of Giant Growth
5996, -- Elixir of Water Breathing
3825 -- Elixir of Fortitude
);
