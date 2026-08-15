import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val table = LootTweaker.getTable("lootchests:serious_loot");

val common = table.getPool("common"); 
val uncommon = table.getPool("uncommon");
val rare = table.getPool("rare");
val mythic = table.getPool("mythic");

common.setRolls(1, 2);
uncommon.setRolls(1, 2);
rare.setRolls(1, 2);
mythic.setRolls(1, 2);

//common
common.addLootTableEntry("lt:generic", 40);
common.addLootTableEntry("lt:highrise", 20);
//90
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




//uncommon
uncommon.addLootTableEntry("lt:highrise", 60);
uncommon.addLootTableEntry("lt:basement", 30);
uncommon.addLootTableEntry("lt:rare", 15);
//110
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

uncommon.addItemEntry(<hbm:book_guide>,10, 1, [Functions.setCount(1, 1)], []);
uncommon.addItemEntry(<hbm:radaway>, 10, 1, [Functions.setCount(1, 3)], []);
uncommon.addItemEntry(<techguns:stielgranate>, 10, 1, [Functions.setCount(1, 3)], []);
uncommon.addItemEntry(<hbm:radaway_strong>, 10, 1, [Functions.setCount(1, 2)], []);



//rare
rare.addLootTableEntry("lt:basement", 40);
rare.addLootTableEntry("lt:rare", 20);
rare.addLootTableEntry("lt:subway", 10);
//110
rare.addItemEntry(<bountifulbaubles:amuletsingluttony>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:crowngold>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:ringfreeaction>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:brokenblackdragonscale>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:shieldcobalt>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:trinketobsidianskull>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:ringflywheeladvanced>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:magicmirror>, 5, 1, [Functions.setCount(1, 1)], []);
rare.addItemEntry(<bountifulbaubles:potionwormhole>, 10, 1, [Functions.setCount(1, 1)], []);

rare.addItemEntry(<hbm:armor_battery>, 20, 1, [Functions.setCount(1, 1)], []);



//mythic
mythic.addLootTableEntry("lt:rare", 60);
mythic.addLootTableEntry("lt:subway", 30);
//125
mythic.addItemEntry(<bountifulbaubles:trinketblackdragonscale>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:shieldobsidian>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:amuletsinpride>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:amuletsinwrath>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:wormholemirror>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:trinketmixeddragonscale>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<bountifulbaubles:trinketankhcharm>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<randomthings:timeinabottle>, 5, 1, [Functions.setCount(1, 1)], []);
mythic.addItemEntry(<srparasites:book_of_vengeance>, 2, 1, [Functions.setCount(1, 1)], []);

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