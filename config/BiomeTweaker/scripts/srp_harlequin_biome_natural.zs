# ============================================================
# SRParasites - Parasite Biome Harlequin
# Minecraft 1.12.2
# BiomeTweaker 3.2
# ============================================================

val harlequin = forBiomes("srparasites:biomeparasite_harlequin");


# ============================================================
# CLIMATE
# ============================================================

# Warm / Dry
harlequin.set("temperature", 0.85);
harlequin.set("humidity", 0.35);

harlequin.removeDictionaryTypes("SPOOKY");

harlequin.addDictionaryTypes("DRY");
harlequin.addDictionaryTypes("DEAD");

# Rain is not allowed
harlequin.set("enableRain", false);


# ============================================================
# DEAD BIOME
# ============================================================

# No normal passive creatures
harlequin.set("spawnableCreatureList", []);
harlequin.set("spawnableWaterCreatureList", []);
harlequin.set("spawnableCaveCreatureList", []);


# ============================================================
# HARLEQUIN TERRAIN
# ============================================================

# Preserve the SRParasites terrain
harlequin.set("topBlock", "srparasites:harlequinn_grass");
harlequin.set("fillerBlock", "srparasites:harleskinn_block");


# ============================================================
# NATURAL GENERATION
# ============================================================

# Register as a warm biome.
# Higher weight = more frequent.
harlequin.addToGeneration("DRY", 2);