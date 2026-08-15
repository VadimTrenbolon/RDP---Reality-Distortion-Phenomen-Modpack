# ============================================================
# SRParasites - Parasite Biome Shrouded
# Minecraft 1.12.2
# BiomeTweaker 3.2
# ============================================================

val shrouded = forBiomes("srparasites:biomeparasite_shrouded");


# ============================================================
# BIOME CLIMATE
# ============================================================

# Cold biome
shrouded.set("temperature", 0.2);
shrouded.set("humidity", 0.35);

shrouded.removeDictionaryTypes("SPOOKY");

shrouded.addDictionaryTypes("COLD");
shrouded.addDictionaryTypes("SNOWY");

# Allow snow
shrouded.set("enableSnow", true);


# ============================================================
# DEAD / BARREN BIOME
# ============================================================

# Disable normal biome vegetation
shrouded.set("grassColor", 0x4A5148);
shrouded.set("foliageColor", 0x343A32);

# Keep the parasite blocks as the terrain
shrouded.set("topBlock", "srparasites:parasitestain");
shrouded.set("fillerBlock", "srparasites:parasiterubble");

# No normal passive creatures
shrouded.set("spawnableCreatureList", []);
shrouded.set("spawnableWaterCreatureList", []);
Shrouded.set("spawnableCaveCreatureList", []);


# ============================================================
# NATURAL GENERATION
# ============================================================

# Add to the COOL biome generation pool.
# Low weight = rare biome.
shrouded.addToGeneration("COOL", 3);