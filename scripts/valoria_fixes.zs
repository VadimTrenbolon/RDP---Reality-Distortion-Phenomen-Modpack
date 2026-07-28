import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.events.IEventManager;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var blockId = event.block.definition.id;
    
    // If silk touch is used, drop the block itself
    if (event.silkTouch) {
        return;
    }
    
    // Meteoric Iron Ore Blocks
    if (blockId == "valoria:selene03ameteoriciron" || 
        blockId == "valoria:zarrion03bmeteoricironore" || 
        blockId == "valoria:ignise01meteoricironore") {
        event.drops = [<galacticraftcore:meteoric_iron_raw>];
    }
    
    // Silicon Ore Blocks
    if (blockId == "valoria:ptotor03siliconore" || 
        blockId == "valoria:selene03asiliconore" || 
        blockId == "valoria:ignisc02siliconore") {
        event.drops = [<galacticraftcore:basic_item:2>];
    }
    
    // Sapphire Ore Blocks
    if (blockId == "valoria:ptotor03sapphireore" || 
        blockId == "valoria:selene03asapphireore" || 
        blockId == "valoria:ignisc02sapphireore") {
        event.drops = [<galacticraftcore:item_basic_moon:2>];
    }
    
    // Dolomite Ore Block
    if (blockId == "valoria:thit05dolomiteore") {
        event.drops = [<galaxyspace:gs_basic:3>];
    }
    
    // Volcanic Ore Block
    if (blockId == "valoria:kerberos05avolcanicore") {
        event.drops = [<galaxyspace:gs_basic:12>];
    }
	
    // Sulfur Ore Block
    if (blockId == "valoria:sib01sulfurore") {
        event.drops = [<galaxyspace:gs_basic:7>];
    }
});