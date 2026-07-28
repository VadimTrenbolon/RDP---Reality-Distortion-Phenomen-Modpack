import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;

global logEnabled as bool = true;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    if (logEnabled && event.entity.world.isRemote()) return;

    var source as IDamageSource = event.damageSource;
    var trueSource as IEntity = source.trueSource; // The entity that caused the damage (The Player)
    
    // Check if the source of the damage was actually a player
    if (logEnabled && !isNull(trueSource) && trueSource instanceof IPlayer) {
        var player as IPlayer = trueSource;
        var heldItem as IItemStack = player.currentItem;
        var itemName as string = isNull(heldItem) ? "Empty Hand" : heldItem.definition.id;
        
        // Construct the message with Yellow formatting (§e)
        // §e = Yellow, §f = White (reset)
        var report as string = "§e[PlayerDamage] §fTarget: " + event.entity.definition.name + 
                               " | Type: §e" + source.damageType + 
                               "§f | Tool: §e" + itemName;

        // Broadcast via server command to ensure it hits chat
        server.commandManager.executeCommand(server, "say " + report);
        
        // Also log to crafttweaker.log for a permanent record
        print("DEBUG: Player " + player.name + " hit " + event.entity.definition.name + " with " + itemName + " (Type: " + source.damageType + ")");
    }
});