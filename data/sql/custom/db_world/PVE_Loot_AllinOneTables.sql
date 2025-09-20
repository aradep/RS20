-- Items: iLevel 10-15 uncommons
-- Loot:   Level 1-3 creatures
SET 
@LootTemplate = 50001,
@LevelMin = 10,
@LevelMax = 15,
@Quality = 2;

-- Delete old templates
DELETE FROM reference_loot_template WHERE entry = @LootTemplate;
DELETE FROM creature_loot_template WHERE entry = @LootTemplate;

-- Create reference template and add items.
INSERT INTO reference_loot_template (entry, item, chance, groupid, comment)
SELECT @LootTemplate, entry, 0, 1, name
FROM item_template
WHERE itemlevel BETWEEN @LevelMin AND @LevelMax
AND quality = @Quality
AND class IN (2, 4);

-- Remove restrictions from items
UPDATE item_template 
SET allowablerace = -1, allowableclass = -1, requiredlevel = 0
WHERE itemlevel BETWEEN @LevelMin AND @LevelMax
AND quality = @Quality
AND class IN (2, 4);

-- Create loot template and add reference.
INSERT INTO creature_loot_template (entry, item, reference, chance, groupid)
VALUES (@LootTemplate, @LootTemplate, @LootTemplate, 10, 1);

-- Set Creature loot ID
UPDATE creature_template SET lootid = @LootTemplate WHERE minlevel BETWEEN 1 AND 3;