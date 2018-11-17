# Storage Drawers
# by hipster
# for Revival modpack

# Imports
import crafttweaker.item.IItemStack;


# Variables
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val b_1x1_Drawers = [
	<storagedrawers:basicdrawers>.withTag({material: "oak"}),
	<storagedrawers:basicdrawers>.withTag({material: "spruce"}),
	<storagedrawers:basicdrawers>.withTag({material: "birch"}),
	<storagedrawers:basicdrawers>.withTag({material: "jungle"}),
	<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}),
	<storagedrawers:basicdrawers>.withTag({material: "acacia"})
] as IItemStack[];

val b_1x2_Drawers = [
	<storagedrawers:basicdrawers:1>.withTag({material: "oak"}),
	<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}),
	<storagedrawers:basicdrawers:1>.withTag({material: "birch"}),
	<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}),
	<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}),
	<storagedrawers:basicdrawers:1>.withTag({material: "acacia"})
] as IItemStack[];

val b_2x2_Drawers = [
	<storagedrawers:basicdrawers:2>.withTag({material: "oak"}),
	<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}),
	<storagedrawers:basicdrawers:2>.withTag({material: "birch"}),
	<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}),
	<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}),
	<storagedrawers:basicdrawers:2>.withTag({material: "acacia"})
] as IItemStack[];

val h_1x2_Drawers = [
	<storagedrawers:basicdrawers:3>.withTag({material: "oak"}),
	<storagedrawers:basicdrawers:3>.withTag({material: "spruce"}),
	<storagedrawers:basicdrawers:3>.withTag({material: "birch"}),
	<storagedrawers:basicdrawers:3>.withTag({material: "jungle"}),
	<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}),
	<storagedrawers:basicdrawers:3>.withTag({material: "acacia"})
] as IItemStack[];

val h_2x2_Drawers = [
	<storagedrawers:basicdrawers:4>.withTag({material: "oak"}),
	<storagedrawers:basicdrawers:4>.withTag({material: "spruce"}),
	<storagedrawers:basicdrawers:4>.withTag({material: "birch"}),
	<storagedrawers:basicdrawers:4>.withTag({material: "jungle"}),
	<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}),
	<storagedrawers:basicdrawers:4>.withTag({material: "acacia"})
] as IItemStack[];

val planks = [
	<minecraft:planks>,
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks:3>,
	<minecraft:planks:5>,
	<minecraft:planks:4>
] as IItemStack[];

val slabs = [
	<minecraft:wooden_slab>,
	<minecraft:wooden_slab:1>,
	<minecraft:wooden_slab:2>,
	<minecraft:wooden_slab:3>,
	<minecraft:wooden_slab:5>,
	<minecraft:wooden_slab:4>,
] as IItemStack[];

# Recipes


//Basic drawers
recipes.remove(<storagedrawers:basicdrawers>);
for i, b_1x1_Drawer in b_1x1_Drawers{
	var plank = planks[i];
	recipes.addShaped(b_1x1_Drawer, [
		[screwIron,<gregtech:meta_item_1:12196>,plank],
		[screwDriver,<gregtech:machine:803>,plank],
		[screwIron,<gregtech:meta_item_1:12196>,plank]]);
}

//1x2 basic drawers
recipes.remove(<storagedrawers:basicdrawers:1>);
for i, b_1x2_Drawer in b_1x2_Drawers{
	var plank = planks[i];
	recipes.addShaped(b_1x2_Drawer*2, [
		[screwIron,<gregtech:machine:803>,plank],
		[<gregtech:meta_item_1:12196>, screwDriver,plank],
		[screwIron,<gregtech:machine:803>,plank]]);

}

//2x2 basic drawers
recipes.remove(<storagedrawers:basicdrawers:2>);
for i, b_2x2_Drawer in b_2x2_Drawers{
	var plank = planks[i];
	recipes.addShaped(b_2x2_Drawer*4, [
		[<gregtech:machine:803>,screwIron,<gregtech:machine:803>],
		[screwDriver,plank,plank],
		[<gregtech:machine:803>,screwIron,<gregtech:machine:803>]]);
}

//Half 1x2 drawers
recipes.remove(<storagedrawers:basicdrawers:3>);
for i, h_1x2_Drawer in h_1x2_Drawers{
	val slab = slabs[i];
	recipes.addShaped(h_1x2_Drawer*2, [
		[screwIron,<gregtech:machine:803>,slab],
		[<gregtech:meta_item_1:12196>, screwDriver,slab],
		[screwIron,<gregtech:machine:803>,slab]]);
}

//Half 2x2 drawers
recipes.remove(<storagedrawers:basicdrawers:4>);
for i, h_2x2_Drawer in h_2x2_Drawers{
	var slab = slabs[i];
	recipes.addShaped(h_2x2_Drawer*4, [
		[<gregtech:machine:803>,screwIron,<gregtech:machine:803>],
		[screwDriver,slab,slab],
		[<gregtech:machine:803>,screwIron,<gregtech:machine:803>]]);
}

//Drawer controller
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>,[
	[plateIron,plateIron,plateIron],
	[<projectred-integration:gate:26>,sensorMV,<projectred-integration:gate:26>],
	[robotarmMV,<ore:drawerBasic>,conveyorMV]]);
	
//Compacting drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>,[
	[plateSteel,plateSteel,plateSteel],
	[pistonMV,<ore:drawerBasic>,pistonMV],
	[plateSteel,plateAluminium,plateSteel]]);
	
//Controller slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:controllerslave>,[
	[plateSteel,circuitGood,plateSteel],
	[<projectred-integration:gate:26>,<ore:drawerBasic>,<projectred-integration:gate:26>],
	[plateSteel,plateSteel,plateSteel]]);
	
//Iron upgrade
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>,[
	[plateIron,<storagedrawers:upgrade_template>,plateIron],
	[<storagedrawers:upgrade_template>,plateIron,<storagedrawers:upgrade_template>],
	[plateIron,stickIron,plateIron]]);

//Gold upgrade
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2>,[
	[plateGold,<storagedrawers:upgrade_template>,plateGold],
	[<storagedrawers:upgrade_template>,plateSteel,<storagedrawers:upgrade_template>],
	[plateGold,stickGold,plateGold]]);

//Diamond upgrade
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3>,[
	[plateDiamond,<storagedrawers:upgrade_template>,plateDiamond],
	[<storagedrawers:upgrade_template>,plateStainlessSteel,<storagedrawers:upgrade_template>],
	[plateDiamond,stickDiamond,plateDiamond]]);
	
//Emerald upgrade
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4>,[
	[plateEmerald,<storagedrawers:upgrade_template>,plateEmerald],
	[<storagedrawers:upgrade_template>,plateTitanium,<storagedrawers:upgrade_template>],
	[plateEmerald,stickEmerald,plateEmerald]]);
	
//Status upgrade (I)
recipes.remove(<storagedrawers:upgrade_status>);
recipes.addShaped(<storagedrawers:upgrade_status>,[
	[<minecraft:redstone_torch>,<projectred-transmission:wire>,<minecraft:redstone_torch>],
	[<projectred-transmission:wire>,<storagedrawers:upgrade_template>,<projectred-transmission:wire>],
	[plateRedstone,<projectred-transmission:wire>,plateRedstone]]);
	
//Status upgrede (II)
recipes.remove(<storagedrawers:upgrade_status:1>);
recipes.addShaped(<storagedrawers:upgrade_status:1>,[
	[<projectred-integration:gate:26>,<projectred-transmission:wire>,<projectred-integration:gate:26>],
	[<projectred-transmission:wire>,<storagedrawers:upgrade_template>,<projectred-transmission:wire>],
	[plateRedstone,<projectred-transmission:wire>,plateRedstone]]);
	
//Redstone upgrade
recipes.remove(<storagedrawers:upgrade_redstone>);
recipes.addShaped(<storagedrawers:upgrade_redstone>,[
	[plateRedstone,stick,plateRedstone],
	[stick,<storagedrawers:upgrade_template>,stick],
	[plateRedstone,<projectred-transmission:wire>,plateRedstone]]);

//Redstone max upgrade
recipes.remove(<storagedrawers:upgrade_redstone:1>);
recipes.addShaped(<storagedrawers:upgrade_redstone:1>,[
	[plateRedstone,plateRedstone,plateRedstone],
	[stick,<storagedrawers:upgrade_template>,stick],
	[stick,<projectred-transmission:wire>,stick]]);
	
//Redstone min upgrade
recipes.remove(<storagedrawers:upgrade_redstone:2>);
recipes.addShaped(<storagedrawers:upgrade_redstone:2>,[
	[stick,<projectred-transmission:wire>,stick],
	[stick,<storagedrawers:upgrade_template>,stick],
	[plateRedstone,plateRedstone,plateRedstone]]);

//Void upgrade
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped(<storagedrawers:upgrade_void>,[
	[stick,<projectred-transmission:wire>,stick],
	[plateDenseSteel,<storagedrawers:upgrade_template>,plateDenseSteel],
	[stick,<projectred-transmission:wire>,stick]]);
	
//Drawer key
recipes.remove(<storagedrawers:drawer_key>);
recipes.addShaped(<storagedrawers:drawer_key>,[
	[null,screwGold,plateSteel],
	[<storagedrawers:upgrade_template>,plateSteel,stickGold],
	[plateGold,hammer,null]]);
	
//Packing tape
recipes.remove(<storagedrawers:tape>);
assembler.recipeBuilder()
    .inputs([<minecraft:paper>* 3])
	//.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13}))
	.property("circuit", 13)
    .fluidInputs([<liquid:glue>*200])
    .outputs(<storagedrawers:tape>*1)
    .duration(100)
    .EUt(16)
    .buildAndRegister();
	