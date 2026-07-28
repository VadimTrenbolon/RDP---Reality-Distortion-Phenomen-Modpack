import crafttweaker.item.IIngredient;

//======================
// Item variables
//======================

// HBM
val asbestos_ingot = <hbm:ingot_asbestos>;
val desh_ingot = <hbm:ingot_desh>;
val yellow_barrel = <hbm:yellow_barrel>;
val singularity = <hbm:singularity>;
val singularitycr = <hbm:singularity_counter_resonant>;
val singularitysk =<hbm:singularity_spark>;
val plate_combine = <hbm:plate_welded:39>;
val designator_item = <hbm:designator>;
val doomcrucible = <hbm:crucible>;
val rbmkdrx = <hbm:rbmk_fuel_drx>;
val amswormhole = <hbm:ams_core_wormhole>;

// SRP
val biomass_block = <srparasites:biomass_block>;
val yelloweye_drop = <srparasites:ada_yelloweye_drop>;
val bough = <srparasites:bough>;
val biomeheart = <srparasites:biomeheart>;
val lure6 = <srparasites:lurecomponent6>;
val summoner_drop = <srparasites:ada_summoner_drop>;
val quench = <srparasites:itemthrow>;
val biomepurifier = <srparasites:biomepurifier>;

// Outputs
val item_variant = <srparasites:itemvariant>;
val item_devolve = <srparasites:itemdevolve>;
val item_evolve = <srparasites:itemevolve>;
val item_assimilate = <srparasites:itemassimilate>;
val sign_charm_item = <srparasites:the_sign_charm>;
val parasite_barrier = <srparasites:parasite_barrier>;

// Catalyst version (not consumed)
val sign = sign_charm_item.reuse();
val designator = designator_item.reuse();

// ==========================
// Custom Tooltips
// ==========================

sign_charm_item.clearTooltip(true);
sign_charm_item.displayName = "§c§lThe Sign";
sign_charm_item.addTooltip("§4§lAssimilated Celestial Vessel");
sign_charm_item.addTooltip("§4A strange pulsating biological singularity.");
sign_charm_item.addTooltip("§4§kYou are now the harbinger of parasitic expansion.");

item_variant.addTooltip("§4True Freedom can at most, be a drunkard's fantasy concept.");

item_devolve.addTooltip("§4Stagnant Eternity leads to inevitable changes for the worse.");

item_evolve.addTooltip("§4Grow, Adapt and Overrun.");

item_assimilate.addTooltip("§4Replace the earth with flesh and metals.");

// =====================
// Gamestages
// =====================

val stage_recipe_sign = "sign_knowledge";
val stage_parasitic_harbinger = "parasitic_harbinger";

mods.ItemStages.addItemStage(stage_parasitic_harbinger, sign_charm_item);
mods.ItemStages.setUnfamiliarName("Theoretical mark of authority", sign_charm_item);

mods.ItemStages.addItemStage(stage_parasitic_harbinger, item_variant);
mods.ItemStages.addItemStage(stage_parasitic_harbinger, item_devolve);
mods.ItemStages.addItemStage(stage_parasitic_harbinger, item_evolve);
mods.ItemStages.addItemStage(stage_parasitic_harbinger, item_assimilate);


//======================
// Recipes
//======================

mods.recipestages.Recipes.addShaped("pain_assimilated_gnosis", stage_recipe_sign, sign_charm_item, [
    [biomeheart, rbmkdrx, amswormhole],
    [rbmkdrx, singularitysk, rbmkdrx],
    [amswormhole, rbmkdrx, biomeheart]
]);

recipes.addShaped("pain_parasite_wand_barbatos", item_variant, [
    [null, null, biomass_block],
    [null, yelloweye_drop, sign],
    [yelloweye_drop, null, null]
]);

recipes.addShaped("pain_parasite_wand_beelzebul", item_devolve, [
    [null, null, yellow_barrel],
    [null, yelloweye_drop, sign],
    [yelloweye_drop, null, null]
]);

recipes.addShaped("pain_parasite_wand_buer", item_evolve, [
    [null, null, desh_ingot],
    [null, yelloweye_drop, sign],
    [yelloweye_drop, null, null]
]);

recipes.addShaped("pain_parasite_wand_morax", item_assimilate, [
    [null, null, bough],
    [null, yelloweye_drop, sign],
    [yelloweye_drop, null, null]
]);



recipes.addShaped("pain_parasite_evictor", parasite_barrier, [
    [plate_combine, biomepurifier, plate_combine ],
    [quench, singularity, quench ], 
    [plate_combine, biomepurifier, plate_combine ]
]);

recipes.addShaped("pain_assimilated_enderman_spawn",<srparasites:itemmobspawner_infenderman>, [
    [null, biomass_block, null],
    [<minecraft:ender_pearl>, sign, <minecraft:ender_pearl>],
    [null, biomass_block, null]
]);

recipes.addShaped("pain_rupter_spawn",<srparasites:itemmobspawner_mudo>, [
    [null, <srparasites:lurecomponent1>, null],
    [null, sign, null],
    [null, biomass_block, null]
]);

recipes.addShapeless("pain_pod_summon",<srparasites:itemmobspawner_pod> * 64, 
    [sign,designator]
);

recipes.addShaped("pain_dod_colonizer",<srparasites:itemmobspawner_dod>, [
    [biomass_block, biomass_block, biomass_block],
    [<srparasites:dispatcher_drop>, sign, <srparasites:dispatcher_drop>],
    [biomass_block, biomass_block, biomass_block]
]);

recipes.addShaped("pain_venkrol_harbinger",<srparasites:itemmobspawner_venkrol>, [
    [biomass_block, biomass_block, biomass_block],
    [<srparasites:beckon_drop>, sign, <srparasites:beckon_drop>],
    [biomass_block, biomass_block, biomass_block]
]);

recipes.addShaped("pain_leem_custodian",<srparasites:itemmobspawner_leem>, [
    [biomass_block, biomass_block, biomass_block],
    [<minecraft:leaves>, sign, <minecraft:leaves>],
    [biomass_block, biomass_block, biomass_block]
]);
