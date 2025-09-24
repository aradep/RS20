SET 

@Tabard_Vendor := 28776,
@Shirt_Vendor := 29495,
@Cloak_Vendor := 29491,

@ClothAccessory_Vendor :=28995,
@ClothArmor_Vendor :=35496,
@LeatherAccessory_Vendor :=28992,
@LeatherArmor_Vendor :=35497,
@MailAccessory_Vendor :=35500,
@MailArmor_Vendor :=29523,
@PlateAccessory_Vendor :=28997,
@PlateArmor_Vendor :=35498,

@Shield_Vendor :=28990,
@Trinket_Vendor :=29528,
@Jewellery_Vendor :=28721,
@Relic_Vendor :=29529,
@Offhand_Vendor :=29527;

/* ARMOR */
DELETE FROM `npc_vendor` WHERE `entry` IN (@Tabard_Vendor,@Shirt_Vendor,@Cloak_Vendor,@ClothAccessory_Vendor,@ClothArmor_Vendor,@LeatherAccessory_Vendor,@LeatherArmor_Vendor,@MailAccessory_Vendor,@MailArmor_Vendor,@PlateAccessory_Vendor,@PlateArmor_Vendor,@Shield_Vendor,@Trinket_Vendor,@Jewellery_Vendor,@Ring_Vendor,@Relic_Vendor,@Offhand_Vendor);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES
(@Jewellery_Vendor, 2, 39421), /* Gem of Imprisoned Vassals */
(@Jewellery_Vendor, 2, 40064), /* Thunderstorm Amulet */
(@Jewellery_Vendor, 2, 40065), /* Fool's Trial */
(@Jewellery_Vendor, 2, 40069), /* Heritage */
(@Jewellery_Vendor, 2, 40071), /* Chains of Adoration */
(@Jewellery_Vendor, 2, 40369), /* Icy Blast Amulet */
(@Jewellery_Vendor, 2, 40374), /* Cosmic Lights */
(@Jewellery_Vendor, 2, 40378), /* Ceaseless Pity */
(@Jewellery_Vendor, 2, 40412), /* Ousted Bead Necklace */
(@Jewellery_Vendor, 2, 40486), /* Necklace of the Glittering Chamber */
(@Jewellery_Vendor, 1, 42034), /* Furious Gladiator's Pendant of Triumph */
(@Jewellery_Vendor, 1, 42035), /* Furious Gladiator's Pendant of Victory */
(@Jewellery_Vendor, 1, 42036), /* Furious Gladiator's Pendant of Dominance */
(@Jewellery_Vendor, 1, 42037), /* Furious Gladiator's Pendant of Ascendancy */
(@Jewellery_Vendor, 1, 42038), /* Furious Gladiator's Pendant of Subjugation */
(@Jewellery_Vendor, 1, 42039), /* Furious Gladiator's Pendant of Deliverance */
(@Jewellery_Vendor, 1, 42040), /* Furious Gladiator's Pendant of Salvation */
(@Jewellery_Vendor, 2, 44657), /* Torque of the Red Dragonflight */
(@Jewellery_Vendor, 2, 44658), /* Chain of the Ancient Wyrm */
(@Jewellery_Vendor, 2, 44659), /* Pendant of the Dragonsworn */
(@Jewellery_Vendor, 2, 44660), /* Drakescale Collar */
(@Jewellery_Vendor, 5, 40074), /* Strong-Handed Ring */
(@Jewellery_Vendor, 5, 40075), /* Ruthlessness */
(@Jewellery_Vendor, 5, 40080), /* Lost Jewel */
(@Jewellery_Vendor, 5, 40107), /* Sand-Worn Band */
(@Jewellery_Vendor, 5, 40108), /* Seized Beauty */
(@Jewellery_Vendor, 5, 40370), /* Gatekeeper */
(@Jewellery_Vendor, 5, 40375), /* Ring of Decaying Beauty */
(@Jewellery_Vendor, 5, 40433), /* Wyrmrest Band */
(@Jewellery_Vendor, 5, 40474), /* Surge Needle Ring */
(@Jewellery_Vendor, 5, 40717), /* Ring of Invincibility */
(@Jewellery_Vendor, 5, 40718), /* Signet of the Impregnable Fortress */
(@Jewellery_Vendor, 5, 40719), /* Band of Channeled Magic */
(@Jewellery_Vendor, 5, 40720), /* Renewal of Life */
(@Jewellery_Vendor, 4, 42114), /* Furious Gladiator's Band of Ascendancy */
(@Jewellery_Vendor, 4, 42115), /* Furious Gladiator's Band of Victory */
(@Jewellery_Vendor, 5, 43582), /* Titanium Frostguard Ring */
(@Jewellery_Vendor, 5, 43993), /* Greatring of Collision */

(@Trinket_Vendor, 5, 40255), /* Dying Curse */
(@Trinket_Vendor, 5, 40256), /* Grim Toll */
(@Trinket_Vendor, 5, 40257), /* Defender's Code */
(@Trinket_Vendor, 5, 40258), /* Forethought Talisman */
(@Trinket_Vendor, 5, 40371), /* Bandit's Insignia */
(@Trinket_Vendor, 5, 40372), /* Rune of Repulsion */
(@Trinket_Vendor, 5, 40373), /* Extract of Necromantic Power */
(@Trinket_Vendor, 5, 40382), /* Soul of the Dead */
(@Trinket_Vendor, 5, 40431), /* Fury of the Five Flights */
(@Trinket_Vendor, 5, 40432), /* Illustration of the Dragon Soul */
(@Trinket_Vendor, 2, 42128), /* Battlemaster's Hostility */
(@Trinket_Vendor, 2, 42129), /* Battlemaster's Accuracy */
(@Trinket_Vendor, 2, 42130), /* Battlemaster's Avidity */
(@Trinket_Vendor, 2, 42131), /* Battlemaster's Conviction */
(@Trinket_Vendor, 2, 42132), /* Battlemaster's Bravery */
(@Trinket_Vendor, 3, 46081), /* Titan-Forged Rune of Audacity */
(@Trinket_Vendor, 3, 46082), /* Titan-Forged Rune of Determination */
(@Trinket_Vendor, 3, 46083), /* Titan-Forged Rune of Accuracy */
(@Trinket_Vendor, 3, 46084), /* Titan-Forged Rune of Cruelty */
(@Trinket_Vendor, 3, 46085), /* Titan-Forged Rune of Alacrity */
(@Trinket_Vendor, 4, 46086), /* Platinum Disks of Battle */
(@Trinket_Vendor, 4, 46087), /* Platinum Disks of Sorcery */
(@Trinket_Vendor, 4, 46088), /* Platinum Disks of Swiftness */

(@Offhand_Vendor, 2, 39766), /* Matriarch's Spawn */
(@Offhand_Vendor, 2, 40192), /* Accursed Spine */
(@Offhand_Vendor, 2, 40273), /* Surplus Limb */
(@Offhand_Vendor, 2, 40350), /* Urn of Lost Memories */
(@Offhand_Vendor, 1, 42526), /* Furious Gladiator's Endgame */
(@Offhand_Vendor, 1, 42532), /* Furious Gladiator's Reprieve */
(@Offhand_Vendor, 1, 42538), /* Furious Gladiator's Grimoire */

(@ClothArmor_Vendor, 1, 39732), /* Faerlina's Madness */
(@ClothArmor_Vendor, 1, 40247), /* Cowl of Innocent Delight */
(@ClothArmor_Vendor, 1, 40287), /* Cowl of Vanity */
(@ClothArmor_Vendor, 1, 40339), /* Gothik's Cowl */
(@ClothArmor_Vendor, 1, 40416), /* Valorous Frostfire Circlet */
(@ClothArmor_Vendor, 1, 40421), /* Valorous Plagueheart Circlet */
(@ClothArmor_Vendor, 1, 40447), /* Valorous Crown of Faith */
(@ClothArmor_Vendor, 1, 40456), /* Valorous Circlet of Faith */
(@ClothArmor_Vendor, 0, 41854), /* Furious Gladiator's Mooncloth Hood */
(@ClothArmor_Vendor, 0, 41915), /* Furious Gladiator's Satin Hood */
(@ClothArmor_Vendor, 0, 41946), /* Furious Gladiator's Silk Cowl */
(@ClothArmor_Vendor, 0, 41993), /* Furious Gladiator's Felweave Cowl */
(@ClothArmor_Vendor, 1, 43995), /* Enamored Cowl */
(@ClothArmor_Vendor, 2, 39719), /* Mantle of the Locusts */
(@ClothArmor_Vendor, 2, 40286), /* Mantle of the Corrupted */
(@ClothArmor_Vendor, 2, 40289), /* Sympathetic Amice */
(@ClothArmor_Vendor, 2, 40351), /* Mantle of the Fatigued Sage */
(@ClothArmor_Vendor, 2, 40419), /* Valorous Frostfire Shoulderpads */
(@ClothArmor_Vendor, 2, 40424), /* Valorous Plagueheart Shoulderpads */
(@ClothArmor_Vendor, 2, 40450), /* Valorous Shoulderpads of Faith */
(@ClothArmor_Vendor, 2, 40459), /* Valorous Mantle of Faith */
(@ClothArmor_Vendor, 3, 41869), /* Furious Gladiator's Mooncloth Mantle */
(@ClothArmor_Vendor, 3, 41934), /* Furious Gladiator's Satin Mantle */
(@ClothArmor_Vendor, 3, 41965), /* Furious Gladiator's Silk Amice */
(@ClothArmor_Vendor, 3, 42011), /* Furious Gladiator's Felweave Amice */
(@ClothArmor_Vendor, 4, 40062), /* Digested Silken Robes */
(@ClothArmor_Vendor, 4, 40234), /* Heigan's Putrid Vestments */
(@ClothArmor_Vendor, 4, 40381), /* Sympathy */
(@ClothArmor_Vendor, 4, 40418), /* Valorous Frostfire Robe */
(@ClothArmor_Vendor, 4, 40423), /* Valorous Plagueheart Robe */
(@ClothArmor_Vendor, 4, 40449), /* Valorous Robe of Faith */
(@ClothArmor_Vendor, 4, 40458), /* Valorous Raiments of Faith */
(@ClothArmor_Vendor, 4, 40526), /* Gown of the Spell-Weaver */
(@ClothArmor_Vendor, 4, 40602), /* Robes of Mutation */
(@ClothArmor_Vendor, 5, 41859), /* Furious Gladiator's Mooncloth Robe */
(@ClothArmor_Vendor, 5, 41921), /* Furious Gladiator's Satin Robe */
(@ClothArmor_Vendor, 5, 41953), /* Furious Gladiator's Silk Raiment */
(@ClothArmor_Vendor, 5, 41998), /* Furious Gladiator's Felweave Raiment */
(@ClothArmor_Vendor, 4, 44002), /* The Sanctum's Flowing Vestments */
(@ClothArmor_Vendor, 5, 46065), /* Titan-Forged Raiment of Dominance */
(@ClothArmor_Vendor, 5, 46066), /* Titan-Forged Raiment of Salvation */
(@ClothArmor_Vendor, 8, 39720), /* Leggings of Atrophy */
(@ClothArmor_Vendor, 8, 40060), /* Distorted Limbs */
(@ClothArmor_Vendor, 8, 40376), /* Legwraps of the Defeated Dragon */
(@ClothArmor_Vendor, 8, 40417), /* Valorous Frostfire Leggings */
(@ClothArmor_Vendor, 8, 40422), /* Valorous Plagueheart Leggings */
(@ClothArmor_Vendor, 8, 40448), /* Valorous Leggings of Faith */
(@ClothArmor_Vendor, 8, 40457), /* Valorous Pants of Faith */
(@ClothArmor_Vendor, 7, 41864), /* Furious Gladiator's Mooncloth Leggings */
(@ClothArmor_Vendor, 7, 41927), /* Furious Gladiator's Satin Leggings */
(@ClothArmor_Vendor, 7, 41959), /* Furious Gladiator's Silk Trousers */
(@ClothArmor_Vendor, 7, 42005), /* Furious Gladiator's Felweave Trousers */
 
(@ClothAccessory_Vendor, 6, 39721), /* Sash of the Parlor */
(@ClothAccessory_Vendor, 6, 39735), /* Belt of False Dignity */
(@ClothAccessory_Vendor, 6, 40271), /* Sash of Solitude */
(@ClothAccessory_Vendor, 6, 40301), /* Cincture of Polarity */
(@ClothAccessory_Vendor, 6, 41881), /* Furious Gladiator's Cord of Salvation */
(@ClothAccessory_Vendor, 6, 41898), /* Furious Gladiator's Cord of Dominance */
(@ClothAccessory_Vendor, 6, 43584), /* Glacial Waistband */
(@ClothAccessory_Vendor, 6, 46079), /* Titan-Forged Cord of Dominance */
(@ClothAccessory_Vendor, 6, 46080), /* Titan-Forged Cord of Salvation */
(@ClothAccessory_Vendor, 8, 40236), /* Serene Echoes */
(@ClothAccessory_Vendor, 8, 40246), /* Boots of Impetuous Ideals */
(@ClothAccessory_Vendor, 8, 40269), /* Boots of Persuasion */
(@ClothAccessory_Vendor, 8, 40326), /* Boots of Forlorn Wishes */
(@ClothAccessory_Vendor, 8, 40750), /* Xintor's Expeditionary Boots */
(@ClothAccessory_Vendor, 8, 40751), /* Slippers of the Holy Light */
(@ClothAccessory_Vendor, 8, 41884), /* Furious Gladiator's Treads of Salvation */
(@ClothAccessory_Vendor, 8, 41902), /* Furious Gladiator's Treads of Dominance */
(@ClothAccessory_Vendor, 8, 43585), /* Glacial Slippers */
(@ClothAccessory_Vendor, 9, 39731), /* Punctilious Bindings */
(@ClothAccessory_Vendor, 9, 40198), /* Bands of Impurity */
(@ClothAccessory_Vendor, 9, 40325), /* Bindings of the Expansive Mind */
(@ClothAccessory_Vendor, 9, 40338), /* Bindings of Yearning */
(@ClothAccessory_Vendor, 9, 40740), /* Wraps of the Astral Traveler */
(@ClothAccessory_Vendor, 9, 40741), /* Cuffs of the Shadow Ascendant */
(@ClothAccessory_Vendor, 9, 41893), /* Furious Gladiator's Cuffs of Salvation */
(@ClothAccessory_Vendor, 9, 41909), /* Furious Gladiator's Cuffs of Dominance */
(@ClothAccessory_Vendor, 1, 39733), /* Gloves of Token Respect */
(@ClothAccessory_Vendor, 1, 40197), /* Gloves of the Fallen Wizard */
(@ClothAccessory_Vendor, 1, 40303), /* Wraps of the Persecuted */
(@ClothAccessory_Vendor, 1, 40380), /* Gloves of Grandeur */
(@ClothAccessory_Vendor, 1, 40415), /* Valorous Frostfire Gloves */
(@ClothAccessory_Vendor, 1, 40420), /* Valorous Plagueheart Gloves */
(@ClothAccessory_Vendor, 1, 40445), /* Valorous Gloves of Faith */
(@ClothAccessory_Vendor, 1, 40454), /* Valorous Handwraps of Faith */
(@ClothAccessory_Vendor, 1, 41874), /* Furious Gladiator's Mooncloth Gloves */
(@ClothAccessory_Vendor, 1, 41940), /* Furious Gladiator's Satin Gloves */
(@ClothAccessory_Vendor, 1, 41971), /* Furious Gladiator's Silk Handguards */
(@ClothAccessory_Vendor, 1, 42017), /* Furious Gladiator's Felweave Handguards */

(@Cloak_Vendor,	1, 39425), /* Cloak of the Dying */
(@Cloak_Vendor,	1, 40250), /* Aged Winter Cloak */
(@Cloak_Vendor,	1, 40251), /* Shroud of Luminosity */
(@Cloak_Vendor,	1, 40252), /* Cloak of the Shadowed Sun */
(@Cloak_Vendor,	1, 40253), /* Shawl of the Old Maid */
(@Cloak_Vendor,	1, 40254), /* Cloak of Averted Crisis */
(@Cloak_Vendor,	1, 40410), /* Shadow of the Ghoul */
(@Cloak_Vendor,	1, 40721), /* Hammerhead Sharkskin Cloak */
(@Cloak_Vendor,	1, 40722), /* Platinum Mesh Cloak */
(@Cloak_Vendor,	1, 40723), /* Disguise of the Kumiho */
(@Cloak_Vendor,	1, 40724), /* Cloak of Kea Feathers */
(@Cloak_Vendor,	1, 42069), /* Furious Gladiator's Cloak of Dominance */
(@Cloak_Vendor,	1, 42070), /* Furious Gladiator's Cloak of Subjugation */
(@Cloak_Vendor,	1, 42071), /* Furious Gladiator's Cloak of Ascendancy */
(@Cloak_Vendor,	1, 42072), /* Furious Gladiator's Cloak of Salvation */
(@Cloak_Vendor,	1, 42073), /* Furious Gladiator's Cloak of Deliverance */
(@Cloak_Vendor,	1, 42074), /* Furious Gladiator's Cloak of Triumph */
(@Cloak_Vendor,	1, 42075), /* Furious Gladiator's Cloak of Victory */

(@LeatherArmor_Vendor, 1, 39768), /* Cowl of the Perished */
(@LeatherArmor_Vendor, 1, 40296), /* Cover of Silence */
(@LeatherArmor_Vendor, 1, 40304), /* Headpiece of Fungal Bloom */
(@LeatherArmor_Vendor, 1, 40329), /* Hood of the Exodus */
(@LeatherArmor_Vendor, 1, 40461), /* Valorous Dreamwalker Headpiece */
(@LeatherArmor_Vendor, 1, 40467), /* Valorous Dreamwalker Cover */
(@LeatherArmor_Vendor, 1, 40473), /* Valorous Dreamwalker Headguard */
(@LeatherArmor_Vendor, 1, 40499), /* Valorous Bonescythe Helmet */
(@LeatherArmor_Vendor, 1, 41321), /* Furious Gladiator's Kodohide Helm */
(@LeatherArmor_Vendor, 1, 41327), /* Furious Gladiator's Wyrmhide Helm */
(@LeatherArmor_Vendor, 1, 41672), /* Furious Gladiator's Leather Helm */
(@LeatherArmor_Vendor, 1, 41678), /* Furious Gladiator's Dragonhide Helm */
(@LeatherArmor_Vendor, 1, 43729), /* Valorous Bonescythe Helmet */
(@LeatherArmor_Vendor, 3, 40063), /* Mantle of Shattered Kinship */
(@LeatherArmor_Vendor, 3, 40305), /* Spaulders of Egotism */
(@LeatherArmor_Vendor, 3, 40437), /* Concealment Shoulderpads */
(@LeatherArmor_Vendor, 3, 40439), /* Mantle of the Eternal Sentinel */
(@LeatherArmor_Vendor, 3, 40465), /* Valorous Dreamwalker Spaulders */
(@LeatherArmor_Vendor, 3, 40470), /* Valorous Dreamwalker Mantle */
(@LeatherArmor_Vendor, 3, 40494), /* Valorous Dreamwalker Shoulderpads */
(@LeatherArmor_Vendor, 3, 40502), /* Valorous Bonescythe Pauldrons */
(@LeatherArmor_Vendor, 3, 41275), /* Furious Gladiator's Kodohide Spaulders */
(@LeatherArmor_Vendor, 3, 41281), /* Furious Gladiator's Wyrmhide Spaulders */
(@LeatherArmor_Vendor, 3, 41683), /* Furious Gladiator's Leather Spaulders */
(@LeatherArmor_Vendor, 3, 41715), /* Furious Gladiator's Dragonhide Spaulders */
(@LeatherArmor_Vendor, 3, 43731), /* Valorous Bonescythe Pauldrons */
(@LeatherArmor_Vendor, 5, 39756), /* Tunic of Prejudice */
(@LeatherArmor_Vendor, 5, 40249), /* Vest of Vitality */
(@LeatherArmor_Vendor, 5, 40277), /* Tunic of Indulgence */
(@LeatherArmor_Vendor, 5, 40319), /* Chestpiece of Suspicion */
(@LeatherArmor_Vendor, 5, 40495), /* Valorous Bonescythe Breastplate */
(@LeatherArmor_Vendor, 5, 41650), /* Furious Gladiator's Leather Tunic */
(@LeatherArmor_Vendor, 5, 43727), /* Valorous Bonescythe Breastplate */
(@LeatherArmor_Vendor, 5, 46062), /* Titan-Forged Leather Tunic of Triumph */
(@LeatherArmor_Vendor, 9, 40463), /* Valorous Dreamwalker Robe */
(@LeatherArmor_Vendor, 9, 40469), /* Valorous Dreamwalker Vestments */
(@LeatherArmor_Vendor, 9, 40471), /* Valorous Dreamwalker Raiments */
(@LeatherArmor_Vendor, 9, 41310), /* Furious Gladiator's Kodohide Robes */
(@LeatherArmor_Vendor, 9, 41316), /* Furious Gladiator's Wyrmhide Robes */
(@LeatherArmor_Vendor, 9, 41661), /* Furious Gladiator's Dragonhide Robes */
(@LeatherArmor_Vendor, 9, 46063), /* Titan-Forged Leather Chestguard of Salvation */
(@LeatherArmor_Vendor, 9, 46064), /* Titan-Forged Leather Chestguard of Dominance */
(@LeatherArmor_Vendor, 7, 39761), /* Infectious Skitterer Leggings */
(@LeatherArmor_Vendor, 7, 40285), /* Desecrated Past */
(@LeatherArmor_Vendor, 7, 40333), /* Leggings of Fleeting Moments */
(@LeatherArmor_Vendor, 7, 40379), /* Legguards of the Boneyard */
(@LeatherArmor_Vendor, 7, 40462), /* Valorous Dreamwalker Leggings */
(@LeatherArmor_Vendor, 7, 40468), /* Valorous Dreamwalker Trousers */
(@LeatherArmor_Vendor, 7, 40493), /* Valorous Dreamwalker Legguards */
(@LeatherArmor_Vendor, 7, 40500), /* Valorous Bonescythe Legplates */
(@LeatherArmor_Vendor, 7, 41298), /* Furious Gladiator's Kodohide Legguards */
(@LeatherArmor_Vendor, 7, 41304), /* Furious Gladiator's Wyrmhide Legguards */
(@LeatherArmor_Vendor, 7, 41655), /* Furious Gladiator's Leather Legguards */
(@LeatherArmor_Vendor, 7, 41667), /* Furious Gladiator's Dragonhide Legguards */
(@LeatherArmor_Vendor, 7, 43730), /* Valorous Bonescythe Legplates */

(@LeatherAccessory_Vendor,	6, 40200), /* Belt of Potent Chanting */
(@LeatherAccessory_Vendor,	6, 40205), /* Stalk-Skin Belt */
(@LeatherAccessory_Vendor,	6, 40260), /* Belt of the Tortured */
(@LeatherAccessory_Vendor,	6, 40341), /* Shackled Cinch */
(@LeatherAccessory_Vendor,	6, 41617), /* Furious Gladiator's Belt of Salvation */
(@LeatherAccessory_Vendor,	6, 41630), /* Furious Gladiator's Belt of Dominance */
(@LeatherAccessory_Vendor,	6, 41832), /* Furious Gladiator's Belt of Triumph */
(@LeatherAccessory_Vendor,	6, 43591), /* Polar Cord */
(@LeatherAccessory_Vendor,	6, 46076), /* Titan-Forged Belt of Dominance */
(@LeatherAccessory_Vendor,	6, 46077), /* Titan-Forged Belt of Salvation */
(@LeatherAccessory_Vendor,	6, 46078), /* Titan-Forged Belt of Triumph */
(@LeatherAccessory_Vendor,	8, 39701), /* Dawnwalkers */
(@LeatherAccessory_Vendor,	8, 40243), /* Footwraps of Vile Deceit */
(@LeatherAccessory_Vendor,	8, 40270), /* Boots of Septic Wounds */
(@LeatherAccessory_Vendor,	8, 40409), /* Boots of the Escaped Captive */
(@LeatherAccessory_Vendor,	8, 40519), /* Footsteps of Malygos */
(@LeatherAccessory_Vendor,	8, 40748), /* Boots of Captain Ellis */
(@LeatherAccessory_Vendor,	8, 40749), /* Rainey's Chewed Boots */
(@LeatherAccessory_Vendor,	8, 41621), /* Furious Gladiator's Boots of Salvation */
(@LeatherAccessory_Vendor,	8, 41635), /* Furious Gladiator's Boots of Dominance */
(@LeatherAccessory_Vendor,	8, 41836), /* Furious Gladiator's Boots of Triumph */
(@LeatherAccessory_Vendor,	9, 39722), /* Swarm Bindings */
(@LeatherAccessory_Vendor,	9, 39765), /* Sinner's Bindings */
(@LeatherAccessory_Vendor,	9, 40186), /* Thrusting Bands */
(@LeatherAccessory_Vendor,	9, 40323), /* Esteemed Bindings */
(@LeatherAccessory_Vendor,	9, 40738), /* Wristwraps of the Cutthroat */
(@LeatherAccessory_Vendor,	9, 40739), /* Bands of the Great Tree */
(@LeatherAccessory_Vendor,	9, 41625), /* Furious Gladiator's Armwraps of Salvation */
(@LeatherAccessory_Vendor,	9, 41640), /* Furious Gladiator's Armwraps of Dominance */
(@LeatherAccessory_Vendor,	9, 41840), /* Furious Gladiator's Armwraps of Triumph */
(@LeatherAccessory_Vendor,	1, 39727), /* Dislocating Handguards */
(@LeatherAccessory_Vendor,	1, 40238), /* Gloves of the Dancing Bear */
(@LeatherAccessory_Vendor,	1, 40349), /* Gloves of Peaceful Death */
(@LeatherAccessory_Vendor,	1, 40362), /* Gloves of Fast Reactions */
(@LeatherAccessory_Vendor,	1, 40460), /* Valorous Dreamwalker Handguards */
(@LeatherAccessory_Vendor,	1, 40466), /* Valorous Dreamwalker Gloves */
(@LeatherAccessory_Vendor,	1, 40472), /* Valorous Dreamwalker Handgrips */
(@LeatherAccessory_Vendor,	1, 40496), /* Valorous Bonescythe Gauntlets */
(@LeatherAccessory_Vendor,	1, 41287), /* Furious Gladiator's Kodohide Gloves */
(@LeatherAccessory_Vendor,	1, 41293), /* Furious Gladiator's Wyrmhide Gloves */
(@LeatherAccessory_Vendor,	1, 41767), /* Furious Gladiator's Leather Gloves */
(@LeatherAccessory_Vendor,	1, 41773), /* Furious Gladiator's Dragonhide Gloves */
(@LeatherAccessory_Vendor,	1, 43728), /* Valorous Bonescythe Gauntlets */


(@MailArmor_Vendor, 1, 40235), /* Helm of Pilgrimage */
(@MailArmor_Vendor, 1, 40340), /* Helm of Unleashed Energy */
(@MailArmor_Vendor, 1, 40344), /* Helm of the Grave */
(@MailArmor_Vendor, 1, 40451), /* Hyaline Helm of the Sniper */
(@MailArmor_Vendor, 1, 40505), /* Valorous Cryptstalker Headpiece */
(@MailArmor_Vendor, 1, 40510), /* Valorous Earthshatter Headpiece */
(@MailArmor_Vendor, 1, 40516), /* Valorous Earthshatter Helm */
(@MailArmor_Vendor, 1, 40521), /* Valorous Earthshatter Faceguard */
(@MailArmor_Vendor, 1, 41013), /* Furious Gladiator's Ringmail Helm */
(@MailArmor_Vendor, 1, 41019), /* Furious Gladiator's Mail Helm */
(@MailArmor_Vendor, 1, 41151), /* Furious Gladiator's Linked Helm */
(@MailArmor_Vendor, 1, 41157), /* Furious Gladiator's Chain Helm */
(@MailArmor_Vendor, 3, 40288), /* Spaulders of Incoherence */
(@MailArmor_Vendor, 3, 40299), /* Pauldrons of the Abandoned */
(@MailArmor_Vendor, 3, 40315), /* Shoulderpads of Secret Arts */
(@MailArmor_Vendor, 3, 40438), /* Council Chamber Epaulets */
(@MailArmor_Vendor, 3, 40507), /* Valorous Cryptstalker Spaulders */
(@MailArmor_Vendor, 3, 40513), /* Valorous Earthshatter Spaulders */
(@MailArmor_Vendor, 3, 40518), /* Valorous Earthshatter Shoulderpads */
(@MailArmor_Vendor, 3, 40524), /* Valorous Earthshatter Shoulderguards */
(@MailArmor_Vendor, 3, 41038), /* Furious Gladiator's Ringmail Spaulders */
(@MailArmor_Vendor, 3, 41044), /* Furious Gladiator's Mail Spaulders */
(@MailArmor_Vendor, 3, 41211), /* Furious Gladiator's Linked Spaulders */
(@MailArmor_Vendor, 3, 41217), /* Furious Gladiator's Chain Spaulders */
(@MailArmor_Vendor, 3, 44003), /* Upstanding Spaulders */
(@MailArmor_Vendor, 5, 39724), /* Cult's Chestguard */
(@MailArmor_Vendor, 5, 40061), /* Quivering Tunic */
(@MailArmor_Vendor, 5, 40193), /* Tunic of Masked Suffering */
(@MailArmor_Vendor, 5, 40283), /* Fallout Impervious Tunic */
(@MailArmor_Vendor, 5, 40503), /* Valorous Cryptstalker Tunic */
(@MailArmor_Vendor, 5, 40508), /* Valorous Earthshatter Tunic */
(@MailArmor_Vendor, 5, 40514), /* Valorous Earthshatter Hauberk */
(@MailArmor_Vendor, 5, 40523), /* Valorous Earthshatter Chestguard */
(@MailArmor_Vendor, 5, 40992), /* Furious Gladiator's Ringmail Armor */
(@MailArmor_Vendor, 5, 40993), /* Furious Gladiator's Mail Armor */
(@MailArmor_Vendor, 5, 41081), /* Furious Gladiator's Linked Armor */
(@MailArmor_Vendor, 5, 41087), /* Furious Gladiator's Chain Armor */
(@MailArmor_Vendor, 5, 43593), /* Icy Scale Chestguard */
(@MailArmor_Vendor, 5, 43998), /* Chestguard of Flagrant Prowess */
(@MailArmor_Vendor, 5, 46059), /* Titan-Forged Chain Armor of Triumph */
(@MailArmor_Vendor, 5, 46060), /* Titan-Forged Ringmail of Salvation */
(@MailArmor_Vendor, 5, 46061), /* Titan-Forged Mail Armor of Domination */
(@MailArmor_Vendor, 7, 40196), /* Legguards of the Undisturbed */
(@MailArmor_Vendor, 7, 40201), /* Leggings of Colossal Strides */
(@MailArmor_Vendor, 7, 40331), /* Leggings of Failed Escape */
(@MailArmor_Vendor, 7, 40352), /* Leggings of Voracious Shadows */
(@MailArmor_Vendor, 7, 40506), /* Valorous Cryptstalker Legguards */
(@MailArmor_Vendor, 7, 40512), /* Valorous Earthshatter Legguards */
(@MailArmor_Vendor, 7, 40517), /* Valorous Earthshatter Kilt */
(@MailArmor_Vendor, 7, 40522), /* Valorous Earthshatter War-Kilt */
(@MailArmor_Vendor, 7, 41027), /* Furious Gladiator's Ringmail Leggings */
(@MailArmor_Vendor, 7, 41033), /* Furious Gladiator's Mail Leggings */
(@MailArmor_Vendor, 7, 41199), /* Furious Gladiator's Linked Leggings */
(@MailArmor_Vendor, 7, 41205), /* Furious Gladiator's Chain Leggings */

(@MailAccessory_Vendor, 6,  39762), /* Torn Web Wrapping */
(@MailAccessory_Vendor, 6,  40272), /* Girdle of the Gambit */
(@MailAccessory_Vendor, 6,  40275), /* Depraved Linked Belt */
(@MailAccessory_Vendor, 6,  40327), /* Girdle of Recuperation */
(@MailAccessory_Vendor, 6,  41051), /* Furious Gladiator's Waistguard of Salvation */
(@MailAccessory_Vendor, 6,  41070), /* Furious Gladiator's Waistguard of Dominance */
(@MailAccessory_Vendor, 6,  41235), /* Furious Gladiator's Waistguard of Triumph */
(@MailAccessory_Vendor, 6,  43594), /* Icy Scale Belt */
(@MailAccessory_Vendor, 6,  46073), /* Titan-Forged Waistguard of Dominance */
(@MailAccessory_Vendor, 6,  46074), /* Titan-Forged Waistguard of Salvation */
(@MailAccessory_Vendor, 6,  46075), /* Titan-Forged Waistguard of Triumph */
(@MailAccessory_Vendor, 8,  39734), /* Atonement Greaves */
(@MailAccessory_Vendor, 8,  40184), /* Crippled Treads */
(@MailAccessory_Vendor, 8,  40237), /* Eruption-Scarred Boots */
(@MailAccessory_Vendor, 8,  40367), /* Boots of the Great Construct */
(@MailAccessory_Vendor, 8,  40746), /* Pack-Ice Striders */
(@MailAccessory_Vendor, 8,  40747), /* Treads of Coastal Wandering */
(@MailAccessory_Vendor, 8,  41055), /* Furious Gladiator's Sabatons of Salvation */
(@MailAccessory_Vendor, 8,  41075), /* Furious Gladiator's Sabatons of Dominance */
(@MailAccessory_Vendor, 8,  41230), /* Furious Gladiator's Sabatons of Triumph */
(@MailAccessory_Vendor, 8,  43595), /* Icy Scale Boots */
(@MailAccessory_Vendor, 8,  43996), /* Sabatons of Firmament */
(@MailAccessory_Vendor, 9,  39702), /* Arachnoid Gold Band */
(@MailAccessory_Vendor, 9,  40209), /* Bindings of the Decrepit */
(@MailAccessory_Vendor, 9,  40282), /* Slime Stream Bands */
(@MailAccessory_Vendor, 9,  40324), /* Bands of Mutual Respect */
(@MailAccessory_Vendor, 9,  40736), /* Armguard of the Tower Archer */
(@MailAccessory_Vendor, 9,  40737), /* Pigmented Clan Bindings */
(@MailAccessory_Vendor, 9,  41060), /* Furious Gladiator's Wristguards of Salvation */
(@MailAccessory_Vendor, 9,  41065), /* Furious Gladiator's Wristguards of Dominance */
(@MailAccessory_Vendor, 9,  41225), /* Furious Gladiator's Wristguards of Triumph */
(@MailAccessory_Vendor, 1,  39718), /* Corpse Scarab Handguards */
(@MailAccessory_Vendor, 1,  40242), /* Grotesque Handgrips */
(@MailAccessory_Vendor, 1,  40262), /* Gloves of Calculated Risk */
(@MailAccessory_Vendor, 1,  40302), /* Benefactor's Gauntlets */
(@MailAccessory_Vendor, 1,  40504), /* Valorous Cryptstalker Handguards */
(@MailAccessory_Vendor, 1,  40509), /* Valorous Earthshatter Handguards */
(@MailAccessory_Vendor, 1,  40515), /* Valorous Earthshatter Gloves */
(@MailAccessory_Vendor, 1,  40520), /* Valorous Earthshatter Grips */
(@MailAccessory_Vendor, 1,  41001), /* Furious Gladiator's Ringmail Gauntlets */
(@MailAccessory_Vendor, 1,  41007), /* Furious Gladiator's Mail Gauntlets */
(@MailAccessory_Vendor, 1,  41137), /* Furious Gladiator's Linked Gauntlets */
(@MailAccessory_Vendor, 1,  41143), /* Furious Gladiator's Chain Gauntlets */
(@MailAccessory_Vendor, 1,  44004), /* Bountiful Gauntlets */

(@PlateArmor_Vendor, 1, 39723), /* Fire-Scorched Greathelm */
(@PlateArmor_Vendor, 1, 39760), /* Helm of Diminished Pride */
(@PlateArmor_Vendor, 1, 40298), /* Faceguard of the Succumbed */
(@PlateArmor_Vendor, 1, 40328), /* Helm of Vital Protection */
(@PlateArmor_Vendor, 1, 40366), /* Platehelm of the Great Wyrm */
(@PlateArmor_Vendor, 1, 40528), /* Valorous Dreadnaught Helmet */
(@PlateArmor_Vendor, 1, 40546), /* Valorous Dreadnaught Greathelm */
(@PlateArmor_Vendor, 1, 40554), /* Valorous Scourgeborne Helmet */
(@PlateArmor_Vendor, 1, 40565), /* Valorous Scourgeborne Faceguard */
(@PlateArmor_Vendor, 1, 40571), /* Valorous Redemption Headpiece */
(@PlateArmor_Vendor, 1, 40576), /* Valorous Redemption Helm */
(@PlateArmor_Vendor, 1, 40581), /* Valorous Redemption Faceguard */
(@PlateArmor_Vendor, 1, 40826), /* Furious Gladiator's Plate Helm */
(@PlateArmor_Vendor, 1, 40827), /* Furious Gladiator's Dreadplate Helm */
(@PlateArmor_Vendor, 1, 40828), /* Furious Gladiator's Scaled Helm */
(@PlateArmor_Vendor, 1, 40933), /* Furious Gladiator's Ornamented Headcover */
(@PlateArmor_Vendor, 3, 39704), /* Pauldrons of Unnatural Death */
(@PlateArmor_Vendor, 3, 39725), /* Epaulets of the Grieving Servant */
(@PlateArmor_Vendor, 3, 40185), /* Shoulderguards of Opportunity */
(@PlateArmor_Vendor, 3, 40334), /* Burdened Shoulderplates */
(@PlateArmor_Vendor, 3, 40377), /* Noble Birthright Pauldrons */
(@PlateArmor_Vendor, 3, 40414), /* Shoulderguards of the Undaunted */
(@PlateArmor_Vendor, 3, 40511), /* Focusing Energy Epaulets */
(@PlateArmor_Vendor, 3, 40530), /* Valorous Dreadnaught Shoulderplates */
(@PlateArmor_Vendor, 3, 40548), /* Valorous Dreadnaught Pauldrons */
(@PlateArmor_Vendor, 3, 40557), /* Valorous Scourgeborne Shoulderplates */
(@PlateArmor_Vendor, 3, 40568), /* Valorous Scourgeborne Pauldrons */
(@PlateArmor_Vendor, 3, 40573), /* Valorous Redemption Spaulders */
(@PlateArmor_Vendor, 3, 40578), /* Valorous Redemption Shoulderplates */
(@PlateArmor_Vendor, 3, 40584), /* Valorous Redemption Shoulderguards */
(@PlateArmor_Vendor, 3, 40866), /* Furious Gladiator's Plate Shoulders */
(@PlateArmor_Vendor, 3, 40868), /* Furious Gladiator's Dreadplate Shoulders */
(@PlateArmor_Vendor, 3, 40869), /* Furious Gladiator's Scaled Shoulders */
(@PlateArmor_Vendor, 3, 40963), /* Furious Gladiator's Ornamented Spaulders */
(@PlateArmor_Vendor, 5, 39767), /* Undiminished Battleplate */
(@PlateArmor_Vendor, 5, 40203), /* Breastplate of Tormented Rage */
(@PlateArmor_Vendor, 5, 40210), /* Chestguard of Bitter Charms */
(@PlateArmor_Vendor, 5, 40279), /* Chestguard of the Exhausted */
(@PlateArmor_Vendor, 5, 40365), /* Breastplate of Frozen Pain */
(@PlateArmor_Vendor, 5, 40453), /* Chestplate of the Great Aspects */
(@PlateArmor_Vendor, 5, 40525), /* Valorous Dreadnaught Battleplate */
(@PlateArmor_Vendor, 5, 40544), /* Valorous Dreadnaught Breastplate */
(@PlateArmor_Vendor, 5, 40550), /* Valorous Scourgeborne Battleplate */
(@PlateArmor_Vendor, 5, 40559), /* Valorous Scourgeborne Chestguard */
(@PlateArmor_Vendor, 5, 40569), /* Valorous Redemption Tunic */
(@PlateArmor_Vendor, 5, 40574), /* Valorous Redemption Chestpiece */
(@PlateArmor_Vendor, 5, 40579), /* Valorous Redemption Breastplate */
(@PlateArmor_Vendor, 5, 40787), /* Furious Gladiator's Dreadplate Chestpiece */
(@PlateArmor_Vendor, 5, 40788), /* Furious Gladiator's Scaled Chestpiece */
(@PlateArmor_Vendor, 5, 40789), /* Furious Gladiator's Plate Chestpiece */
(@PlateArmor_Vendor, 5, 40907), /* Furious Gladiator's Ornamented Chestguard */
(@PlateArmor_Vendor, 5, 43586), /* Icebane Chestguard */
(@PlateArmor_Vendor, 5, 44000), /* Dragonstorm Breastplate */
(@PlateArmor_Vendor, 5, 46057), /* Titan-Forged Chestguard of Salvation */
(@PlateArmor_Vendor, 5, 46058), /* Titan-Forged Breastplate of Triumph */
(@PlateArmor_Vendor, 7, 40204), /* Legguards of the Apostle */
(@PlateArmor_Vendor, 7, 40240), /* Greaves of Turbulence */
(@PlateArmor_Vendor, 7, 40294), /* Riveted Abomination Leggings */
(@PlateArmor_Vendor, 7, 40318), /* Legplates of Double Strikes */
(@PlateArmor_Vendor, 7, 40363), /* Bone-Inlaid Legguards */
(@PlateArmor_Vendor, 7, 40446), /* Dragon Brood Legguards */
(@PlateArmor_Vendor, 7, 40529), /* Valorous Dreadnaught Legplates */
(@PlateArmor_Vendor, 7, 40547), /* Valorous Dreadnaught Legguards */
(@PlateArmor_Vendor, 7, 40556), /* Valorous Scourgeborne Legplates */
(@PlateArmor_Vendor, 7, 40567), /* Valorous Scourgeborne Legguards */
(@PlateArmor_Vendor, 7, 40572), /* Valorous Redemption Greaves */
(@PlateArmor_Vendor, 7, 40577), /* Valorous Redemption Legplates */
(@PlateArmor_Vendor, 7, 40583), /* Valorous Redemption Legguards */
(@PlateArmor_Vendor, 7, 40847), /* Furious Gladiator's Plate Legguards */
(@PlateArmor_Vendor, 7, 40848), /* Furious Gladiator's Dreadplate Legguards */
(@PlateArmor_Vendor, 7, 40849), /* Furious Gladiator's Scaled Legguards */
(@PlateArmor_Vendor, 7, 40939), /* Furious Gladiator's Ornamented Legplates */
(@PlateArmor_Vendor, 7, 43994), /* Belabored Legplates */

(@PlateAccessory_Vendor, 6, 39759), /* Ablative Chitin Girdle */
(@PlateAccessory_Vendor, 6, 40241), /* Girdle of Unity */
(@PlateAccessory_Vendor, 6, 40259), /* Waistguard of Divine Grace */
(@PlateAccessory_Vendor, 6, 40263), /* Fleshless Girdle */
(@PlateAccessory_Vendor, 6, 40278), /* Girdle of Chivalry */
(@PlateAccessory_Vendor, 6, 40317), /* Girdle of Razuvious */
(@PlateAccessory_Vendor, 6, 40881), /* Furious Gladiator's Girdle of Triumph */
(@PlateAccessory_Vendor, 6, 40976), /* Furious Gladiator's Girdle of Salvation */
(@PlateAccessory_Vendor, 6, 43587), /* Icebane Girdle */
(@PlateAccessory_Vendor, 6, 46071), /* Titan-Forged Girdle of Salvation */
(@PlateAccessory_Vendor, 6, 46072), /* Titan-Forged Girdle of Triumph */
(@PlateAccessory_Vendor, 8, 39706), /* Sabatons of Sudden Reprisal */
(@PlateAccessory_Vendor, 8, 39717), /* Inexorable Sabatons */
(@PlateAccessory_Vendor, 8, 40187), /* Poignant Sabatons */
(@PlateAccessory_Vendor, 8, 40206), /* Iron-Spring Jumpers */
(@PlateAccessory_Vendor, 8, 40297), /* Sabatons of Endurance */
(@PlateAccessory_Vendor, 8, 40320), /* Faithful Steel Sabatons */
(@PlateAccessory_Vendor, 8, 40742), /* Bladed Steelboots */
(@PlateAccessory_Vendor, 8, 40743), /* Kyzoc's Ground Stompers */
(@PlateAccessory_Vendor, 8, 40745), /* Sabatons of Rapid Recovery */
(@PlateAccessory_Vendor, 8, 40882), /* Furious Gladiator's Greaves of Triumph */
(@PlateAccessory_Vendor, 8, 40977), /* Furious Gladiator's Greaves of Salvation */
(@PlateAccessory_Vendor, 8, 43588), /* Icebane Treads */
(@PlateAccessory_Vendor, 9, 39729), /* Bracers of the Tyrant */
(@PlateAccessory_Vendor, 9, 39764), /* Bindings of the Hapless Prey */
(@PlateAccessory_Vendor, 9, 40274), /* Bracers of Liberation */
(@PlateAccessory_Vendor, 9, 40306), /* Bracers of the Unholy Knight */
(@PlateAccessory_Vendor, 9, 40330), /* Bracers of Unrelenting Attack */
(@PlateAccessory_Vendor, 9, 40332), /* Abetment Bracers */
(@PlateAccessory_Vendor, 9, 40733), /* Wristbands of the Sentinel Huntress */
(@PlateAccessory_Vendor, 9, 40734), /* Bracers of Dalaran's Parapets */
(@PlateAccessory_Vendor, 9, 40735), /* Zartson's Jungle Vambraces */
(@PlateAccessory_Vendor, 9, 40889), /* Furious Gladiator's Bracers of Triumph */
(@PlateAccessory_Vendor, 9, 40983), /* Furious Gladiator's Bracers of Salvation */
(@PlateAccessory_Vendor, 1, 39703), /* Rescinding Grips */
(@PlateAccessory_Vendor, 1, 39726), /* Callous-Hearted Gauntlets */
(@PlateAccessory_Vendor, 1, 40188), /* Gauntlets of the Disobedient */
(@PlateAccessory_Vendor, 1, 40261), /* Crude Discolored Battlegrips */
(@PlateAccessory_Vendor, 1, 40316), /* Gauntlets of Guiding Touch */
(@PlateAccessory_Vendor, 1, 40347), /* Zeliek's Gauntlets */
(@PlateAccessory_Vendor, 1, 40527), /* Valorous Dreadnaught Gauntlets */
(@PlateAccessory_Vendor, 1, 40545), /* Valorous Dreadnaught Handguards */
(@PlateAccessory_Vendor, 1, 40552), /* Valorous Scourgeborne Gauntlets */
(@PlateAccessory_Vendor, 1, 40563), /* Valorous Scourgeborne Handguards */
(@PlateAccessory_Vendor, 1, 40570), /* Valorous Redemption Gloves */
(@PlateAccessory_Vendor, 1, 40575), /* Valorous Redemption Gauntlets */
(@PlateAccessory_Vendor, 1, 40580), /* Valorous Redemption Handguards */
(@PlateAccessory_Vendor, 1, 40807), /* Furious Gladiator's Plate Gauntlets */
(@PlateAccessory_Vendor, 1, 40808), /* Furious Gladiator's Scaled Gauntlets */
(@PlateAccessory_Vendor, 1, 40809), /* Furious Gladiator's Dreadplate Gauntlets */
(@PlateAccessory_Vendor, 1, 40927), /* Furious Gladiator's Ornamented Gloves */

(@Shield_Vendor, 1, 39716), /* Shield of Assimilation */
(@Shield_Vendor, 1, 40266), /* Hero's Surrender */
(@Shield_Vendor, 1, 40475), /* Barricade of Eternity */
(@Shield_Vendor, 1, 42560), /* Furious Gladiator's Shield Wall */
(@Shield_Vendor, 1, 42565), /* Furious Gladiator's Barrier */
(@Shield_Vendor, 1, 42571), /* Furious Gladiator's Redoubt */

(@Relic_Vendor, 7, 40191), /* Libram of Radiance */
(@Relic_Vendor, 7, 40268), /* Libram of Tolerance */
(@Relic_Vendor, 7, 40337), /* Libram of Resurgence */
(@Relic_Vendor, 7, 42615), /* Furious Gladiator's Libram of Justice */
(@Relic_Vendor, 7, 42853), /* Furious Gladiator's Libram of Fortitude */
(@Relic_Vendor, 8, 39757), /* Idol of Worship */
(@Relic_Vendor, 8, 40321), /* Idol of the Shooting Star */
(@Relic_Vendor, 8, 40342), /* Idol of Awakening */
(@Relic_Vendor, 8, 42579), /* Furious Gladiator's Idol of Tenacity */
(@Relic_Vendor, 8, 42584), /* Furious Gladiator's Idol of Steadfastness */
(@Relic_Vendor, 8, 42589), /* Furious Gladiator's Idol of Resolve */
(@Relic_Vendor, 9, 39728), /* Totem of Misery */
(@Relic_Vendor, 9, 40267), /* Totem of Hex */
(@Relic_Vendor, 9, 40322), /* Totem of Dueling */
(@Relic_Vendor, 9, 42598), /* Furious Gladiator's Totem of the Third Wind */
(@Relic_Vendor, 9, 42603), /* Furious Gladiator's Totem of Survival */
(@Relic_Vendor, 9, 42608), /* Furious Gladiator's Totem of Indomitability */
(@Relic_Vendor, 1, 40207), /* Sigil of Awareness */
(@Relic_Vendor, 1, 42621); /* Furious Gladiator's Sigil of Strife */

/* SET PRICES */
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`buyprice`=0, `item_template`.`sellprice`=1 
WHERE `npc_vendor`.`entry` IN (@Cloak_Vendor,@ClothAccessory_Vendor,@ClothArmor_Vendor,@LeatherAccessory_Vendor,@LeatherArmor_Vendor,@MailAccessory_Vendor,@MailArmor_Vendor,@PlateAccessory_Vendor,@PlateArmor_Vendor,@Shield_Vendor,@Trinket_Vendor,@Jewellery_Vendor,@Relic_Vendor,@Offhand_Vendor);


/* TABARD VENDOR */
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES     
(@Tabard_Vendor, 2, 15196), /* Private\'s Tabard */
(@Tabard_Vendor, 2, 15197), /* Scout\'s Tabard */
(@Tabard_Vendor, 2, 45574), /* Stormwind Tabard */
(@Tabard_Vendor, 2, 45577), /* Ironforge Tabard */
(@Tabard_Vendor, 2, 45578), /* Gnomeregan Tabard */
(@Tabard_Vendor, 2, 45579), /* Darnassus Tabard */
(@Tabard_Vendor, 2, 45580), /* Exodar Tabard */
(@Tabard_Vendor, 2, 45581), /* Orgrimmar Tabard */
(@Tabard_Vendor, 2, 45582), /* Sen\'jin Tabard */
(@Tabard_Vendor, 2, 45583), /* Undercity Tabard */
(@Tabard_Vendor, 2, 45584), /* Thunder Bluff Tabard */
(@Tabard_Vendor, 2, 45585); /* Silvermoon City Tabard */

/* SHIRT VENDOR */
DELETE FROM `npc_vendor` WHERE  `entry`=@Shirt_Vendor;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES 
(@Shirt_Vendor, 0, 42360),
(@Shirt_Vendor, 0, 42361),
(@Shirt_Vendor, 0, 42363),
(@Shirt_Vendor, 0, 42365),
(@Shirt_Vendor, 0, 42368),
(@Shirt_Vendor, 0, 42369),
(@Shirt_Vendor, 0, 42370),
(@Shirt_Vendor, 0, 42371),
(@Shirt_Vendor, 0, 42372),
(@Shirt_Vendor, 0, 42373),
(@Shirt_Vendor, 0, 42374),
(@Shirt_Vendor, 0, 42375),
(@Shirt_Vendor, 0, 42376),
(@Shirt_Vendor, 0, 42377),
(@Shirt_Vendor, 0, 42378),
(@Shirt_Vendor, 0, 45664),
(@Shirt_Vendor, 0, 45666),
(@Shirt_Vendor, 0, 45667),
(@Shirt_Vendor, 0, 45668),
(@Shirt_Vendor, 0, 45669),
(@Shirt_Vendor, 0, 45670),
(@Shirt_Vendor, 0, 45671),
(@Shirt_Vendor, 0, 45672),
(@Shirt_Vendor, 0, 45673),
(@Shirt_Vendor, 0, 45674);

/* SET PRICES */
UPDATE `item_template` INNER JOIN `npc_vendor` ON `item_template`.`entry` = `npc_vendor`.`item` 
SET `item_template`.`requiredreputationfaction`=0, `requiredreputationrank`=0, `item_template`.`buyprice`=0, `item_template`.`sellprice`=1
WHERE `npc_vendor`.`entry` IN (@Tabard_Vendor,@Shirt_Vendor);
