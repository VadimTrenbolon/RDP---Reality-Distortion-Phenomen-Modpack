import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingDamageEvent;
import crafttweaker.event.CommandEvent;

// --- CONFIGURATION ---
global rawMap as float[int] = {};

// 1. SIMPLE TOGGLE (Type: /say toggle)
events.onCommand(function(event as CommandEvent) {
    if (event.command.name != "say" || event.parameters.length == 0) return;
    
    if (event.parameters[0] == "toggle") {
        logEnabled = !logEnabled;
        server.commandManager.executeCommand(server, "msg @a §6[Log] §fEnabled: " + (logEnabled ? "§aON" : "§cOFF"));
        event.cancel();
    }
});

// 2. STAGE 1: CATCH RAW DAMAGE
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    if (!logEnabled || event.entity.world.isRemote()) return;
    
    // Store damage by the entity's internal ID (Integer)
    rawMap[event.entity.id] = event.amount;
});

// 3. STAGE 2: CATCH ACTUAL DAMAGE & REPORT
events.onEntityLivingDamage(function(event as EntityLivingDamageEvent) {
    if (!logEnabled || event.entity.world.isRemote()) return;

    var entityID = event.entity.id;
    var actualDmg = event.amount;
    var rawDmg = actualDmg; // Fallback if Hurt event was missed

    // Retrieve Raw Damage from Map
    if (rawMap has entityID) {
        rawDmg = rawMap[entityID];
    }

    // Identify Source and Target
    var targetName = event.entity.displayName;
    var type = event.damageSource.damageType;
    
    // Determine color based on mitigation (Armor/Resistance)
    var dmgColor = (actualDmg < rawDmg) ? "§a" : "§c";

    // Build Report String
    var report = "§6[Dmg] §e" + targetName + 
                 " §f| Type: §b" + type + 
                 " §f| Raw: §e" + (rawDmg as string) + 
                 " §f| Actual: " + dmgColor + (actualDmg as string);

    // Output to Chat
    server.commandManager.executeCommand(server, "say " + report);

    // Cleanup Map to save memory
    rawMap[entityID] = 0.0;
});