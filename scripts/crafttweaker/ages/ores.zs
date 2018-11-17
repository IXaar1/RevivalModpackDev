# ======== Imports ========
import crafttweaker.item.IItemStack;

# ======== Variables ========
/*Do not edit!!*/val meta = [0,1,2,3,4,5,6,7,8,9,10,11,12,13] as int[];
/*Do not edit!!*/val blocks = [<minecraft:stone>,<minecraft:stone:3>,<minecraft:stone:1>,<minecraft:stone:5>,<minecraft:bedrock>,<minecraft:gravel>,<minecraft:netherrack>,<minecraft:end_stone>,<minecraft:sandstone>,<minecraft:sand:1>,<gregtech:granite>,<gregtech:granite:1>,<gregtech:mineral>,<gregtech:mineral:2>] as IItemStack[];


# ======== Recipes ========
for i, j in meta{
	//tin
	var tin = <gregtech:ore_tin_0>.definition.makeStack(j);
	mods.orestages.OreStages.addReplacement("age0",tin ,blocks[i]);
	mods.ItemStages.addItemStage("age0", tin);
	
	//copper
	var copper = <gregtech:ore_copper_0>.definition.makeStack(j);
	mods.orestages.OreStages.addReplacement("age0",copper ,blocks[i]);
	mods.ItemStages.addItemStage("age0", copper);
	
	}