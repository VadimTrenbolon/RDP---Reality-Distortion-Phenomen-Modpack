import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;


// ============================================================
// SERIOUS CREEPER - OWN LOOT TABLES
// ============================================================

val scGenericTable = LootTweaker.newTable("sc:generic");
val scHighRiseTable = LootTweaker.newTable("sc:highrise");
val scBasementTable = LootTweaker.newTable("sc:basement");
val scSubwayTable = LootTweaker.newTable("sc:subway");
val scRareTable = LootTweaker.newTable("sc:rare");


// ============================================================
// POOLS
// ============================================================

val scGenericPool = scGenericTable.addPool("generic", 3, 18, 1, 2);
val scHighRisePool = scHighRiseTable.addPool("highrise", 3, 18, 1, 2);
val scBasementPool = scBasementTable.addPool("basement", 9, 18, 1, 2);
val scSubwayPool = scSubwayTable.addPool("subway", 9, 18, 1, 2);
val scRarePool = scRareTable.addPool("rare", 1, 18, 1, 2);


// ============================================================
// GENERIC
// ============================================================

// Basic useful items
scGenericPool.addItemEntry(<minecraft:iron_nugget>, 20, 1, [Functions.setCount(1, 8)], []);
scGenericPool.addItemEntry(<minecraft:iron_ingot>, 15, 1, [Functions.setCount(1, 4)], []);
scGenericPool.addItemEntry(<minecraft:leather>, 20, 1, [Functions.setCount(1, 8)], []);
scGenericPool.addItemEntry(<minecraft:web>, 20, 1, [Functions.setCount(1, 8)], []);
scGenericPool.addItemEntry(<minecraft:slime_ball>, 20, 1, [Functions.setCount(1, 8)], []);

// HBM
scGenericPool.addItemEntry(<hbm:gas_mask_filter>, 15, 1, [Functions.setCount(1, 2)], []);
scGenericPool.addItemEntry(<hbm:dosimeter>, 8, 1, [Functions.setCount(1, 1)], []);
scGenericPool.addItemEntry(<hbm:radaway>, 8, 1, [Functions.setCount(1, 2)], []);

// Techguns
scGenericPool.addItemEntry(<techguns:itemshared:62>, 20, 1, [Functions.setCount(1, 4)], []);
scGenericPool.addItemEntry(<techguns:itemshared:63>, 20, 1, [Functions.setCount(1, 4)], []);
scGenericPool.addItemEntry(<techguns:fraggrenade>, 8, 1, [Functions.setCount(1, 2)], []);
scGenericPool.addItemEntry(<techguns:stielgranate>, 8, 1, [Functions.setCount(1, 2)], []);


// ============================================================
// HIGHRISE
// ============================================================

scHighRisePool.addItemEntry(<minecraft:web>, 30, 1, [Functions.setCount(1, 16)], []);
scHighRisePool.addItemEntry(<minecraft:slime_ball>, 30, 1, [Functions.setCount(1, 8)], []);

scHighRisePool.addItemEntry(<techguns:itemshared:62>, 25, 1, [Functions.setCount(1, 4)], []);
scHighRisePool.addItemEntry(<techguns:itemshared:63>, 25, 1, [Functions.setCount(1, 4)], []);

scHighRisePool.addItemEntry(<minecraft:leather>, 20, 1, [Functions.setCount(1, 8)], []);
scHighRisePool.addItemEntry(<techguns:itemshared:60>, 20, 1, [Functions.setCount(1, 8)], []);
scHighRisePool.addItemEntry(<techguns:itemshared:77>, 15, 1, [Functions.setCount(1, 4)], []);


// ============================================================
// BASEMENT
// ============================================================

// ============================================================
// SUBWAY
// ============================================================


// Netherite
scSubwayPool.addItemEntry(<futuremc:ancient_debris>, 8, 1, [Functions.setCount(1, 4)], []);
scSubwayPool.addItemEntry(<futuremc:netherite_scrap>, 6, 1, [Functions.setCount(1, 2)], []);
scSubwayPool.addItemEntry(<futuremc:netherite_ingot>, 2, 1, [Functions.setCount(1, 1)], []);


// ============================================================
// SERIOUS CREEPER CHEST
// ============================================================

val table = LootTweaker.getTable("lootchests:serious_loot");

val common = table.getPool("common");
val uncommon = table.getPool("uncommon");
val rare = table.getPool("rare");
val mythic = table.getPool("mythic");


// Keep the existing number of rolls
common.setRolls(1, 2);
uncommon.setRolls(1, 2);
rare.setRolls(1, 2);
mythic.setRolls(1, 2);


// ============================================================
// COMMON
// ============================================================

common.addLootTableEntry("sc:generic", 40);
common.addLootTableEntry("sc:highrise", 20);

common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:night_vision"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:sails_normal"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:learning_normal"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_normal"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:leaping"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:photosynthesis_normal"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:crumbling_normal"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:strength"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:regeneration"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:swiftness"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:reincarnation_normal"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:fire_resistance"}), 5, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:water_breathing"}), 5, 1, [Functions.setCount(1, 1)], []);

common.addItemEntry(<bountifulbaubles:trinketballoon>, 10, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<bountifulbaubles:trinketmagiclenses>, 10, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<bountifulbaubles:trinketapple>, 10, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<bountifulbaubles:trinketvitamins>, 10, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<bountifulbaubles:trinketluckyhorseshoe>, 10, 1, [Functions.setCount(1, 1)], []);

common.addItemEntry(<randomthings:diviningrod>, 15, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<randomthings:diviningrod:3>, 15, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<randomthings:diviningrod:8>, 15, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<randomthings:diviningrod:9>, 15, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<randomthings:diviningrod:12>, 15, 1, [Functions.setCount(1, 1)], []);

common.addItemEntry(<hbm:machine_battery_potato>, 20, 2, [Functions.setCount(1, 1)], []);
common.addItemEntry(<hbm:dosimeter>, 10, 1, [Functions.setCount(1, 1)], []);
common.addItemEntry(<hbm:gas_mask_filter>, 20, 1, [Functions.setCount(1, 2)], []);
common.addItemEntry(<hbm:gun_kit_2>, 20, 1, [Functions.setCount(1, 1)], []);


// ============================================================
// UNCOMMON
// ============================================================

uncommon.addLootTableEntry("sc:highrise", 60);
uncommon.addLootTableEntry("sc:basement", 30);
uncommon.addLootTableEntry("sc:rare", 15);

uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:sails_strong"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:learning_strong"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_strong"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:strong_leaping"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:photosynthesis_strong"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:crumbling_strong"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:strong_strength"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:strong_regeneration"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:strong_swiftness"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:reincarnation_strong"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:fire_resistance"}), 12, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:water_breathing"}), 12, 1, [Functions.setCount(1, 1)], []);

uncommon.addItemEntry(<bountifulbaubles:ringoverclocking>, 10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<bountifulbaubles:trinketshulkerheart>, 10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<bountifulbaubles:trinketbezoar>, 10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<bountifulbaubles:enderdragonscale>, 10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<bountifulbaubles:trinketbrokenheart>, 10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<bountifulbaubles:ringflywheel>, 8, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<bountifulbaubles:potionrecall>, 8, 1, [Functions.setCount(1, 1)], []);

uncommon.addItemEntry(<randomthings:chunkanalyzer>, 15, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<randomthings:diviningrod:2>, 5, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<randomthings:diviningrod:4>, 5, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<randomthings:diviningrod:10>, 5, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<randomthings:diviningrod:11>, 5, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<randomthings:diviningrod:13>, 5, 1, [Functions.setCount(1, 1)], []);

uncommon.addItemEntry(<hbm:book_guide>, 10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<hbm:radaway>, 30, 1, [Functions.setCount(1, 5)], []);
uncommon.addItemEntry(<techguns:stielgranate>, 10, 1, [Functions.setCount(1, 3)], []);
uncommon.addItemEntry(<hbm:radaway_strong>, 20, 1, [Functions.setCount(1, 2)], []);


// ============================================================
// RARE
// ============================================================

rare.addLootTableEntry("sc:basement", 40);
rare.addLootTableEntry("sc:rare", 20);
rare.addLootTableEntry("sc:subway", 10);

rare.addItemEntry(<bountifulbaubles:amuletsingluttony>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:crowngold>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:ringfreeaction>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:brokenblackdragonscale>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:shieldcobalt>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:trinketobsidianskull>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:ringflywheeladvanced>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:magicmirror>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:potionwormhole>, 10, 1, [Functions.setCount(1, 1)], []);

rare.addItemEntry(<hbm:hev_battery>, 20, 1, [Functions.setCount(1, 1)], []);


// ============================================================
// MYTHIC
// ============================================================

mythic.addLootTableEntry("sc:rare", 60);
mythic.addLootTableEntry("sc:subway", 30);

mythic.addItemEntry(<bountifulbaubles:trinketblackdragonscale>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:shieldobsidian>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:amuletsinpride>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:amuletsinwrath>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:wormholemirror>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:trinketmixeddragonscale>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:trinketankhcharm>, 5, 1, [Functions.setCount(1, 1)], []);

mythic.addItemEntry(<randomthings:timeinabottle>, 5, 1, [Functions.setCount(1, 1)], []);

mythic.addItemEntry(<srparasites:book_of_vengeance>, 1, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_scythe>, 3, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_axe>, 3, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_sword>, 3, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_cleaver>, 3, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_bow>, 3, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_maul>, 3, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:weapon_lance>, 3, 1, [Functions.setCount(1, 1)], []);

mythic.addItemEntry(<randomthings:diviningrod:7>, 10, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<randomthings:diviningrod:14>, 10, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<randomthings:diviningrod:15>, 10, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<randomthings:diviningrod:16>, 10, 1, [Functions.setCount(1, 1)], []);