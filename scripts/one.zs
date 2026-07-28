#priority 600

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

val metalpanel as IItemStack = <techguns:metalpanel>;
val nethermetal as IItemStack = <techguns:nethermetal>;
val concrete as IItemStack = <techguns:concrete>;
metalpanel.hardness = 18;
nethermetal.hardness = 18;
concrete.hardness = 15;
val stairs_metal as IItemStack = <techguns:stairs_metal>;
val stairs_concrete as IItemStack = <techguns:stairs_concrete>;
stairs_metal.hardness = 18;
stairs_concrete.hardness = 15;
val bunkerdoor as IItemStack = <techguns:bunkerdoor>;
val door3x3 as IItemStack = <techguns:door3x3>;
bunkerdoor.hardness = 18;
door3x3.hardness = 15;

val obsidian as IItemStack = <minecraft:obsidian>;
obsidian.hardness = 17;