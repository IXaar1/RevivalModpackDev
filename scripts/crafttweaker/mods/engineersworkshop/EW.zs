# Engineer's workshop
# by hipster
# for Revival modpack

# Imports

# Variables

# Recipes
//Workshop table
recipes.remove(<engineersworkshop:blocktable>);
recipes.addShaped(<engineersworkshop:blocktable>,[
	[plateWood,<minecraft:crafting_table>,plateWood],
	[wireRedAlloy,circuitBasic,wireRedAlloy],
	[plateSteel,plateSteel,plateSteel]]);
	
//Blank upgrade
recipes.remove(<engineersworkshop:upgrade>);
recipes.addShaped(<engineersworkshop:upgrade>*4,[
	[null,plateSteel,hammer],
	[plateSteel,foilSteel,plateSteel],
	[null,plateSteel,null]]);
	
//Autocraft upgrade
recipes.remove(<engineersworkshop:upgrade:1>);
recipes.addShaped(<engineersworkshop:upgrade:1>,[
	[<minecraft:crafting_table>,<projectred-integration:gate:26>,<minecraft:crafting_table>],
	[circuitBasic,pistonLV,foilSteel],
	[foilSteel,<engineersworkshop:upgrade>,foilSteel]]);
	
//Storage upgrade
recipes.remove(<engineersworkshop:upgrade:2>);
recipes.addShaped(<engineersworkshop:upgrade:2>,[
	[screwIron,<gregtech:machine:803>,screwIron],
	[null,<engineersworkshop:upgrade>,hammer],
	[null, null,null]]);
	
//Speed upgrade
recipes.remove(<engineersworkshop:upgrade:4>);
recipes.addShaped(<engineersworkshop:upgrade:4>,[
	[plateIron,circuitBasic,plateIron],
	[plateLapis,<engineersworkshop:upgrade>,plateLapis],
	[plateIron,wireRedAlloy,plateIron]]);
	
//Charger upgrade
recipes.remove(<engineersworkshop:upgrade:3>);
recipes.addShaped(<engineersworkshop:upgrade:3>,[
	[plateIron,emitterLV,wireRedAlloy],
	[circuitBasic,<engineersworkshop:upgrade>,wireRedAlloy],
	[plateIron,plateSteel,plateSteel]]);
	
//Queuing upgrade
recipes.remove(<engineersworkshop:upgrade:5>);
recipes.addShaped(<engineersworkshop:upgrade:5>,[
	[plateIron,plateIron,<gregtech:machine:803>],
	[plateIron,<engineersworkshop:upgrade>,circuitBasic],
	[plateIron,plateIron,<gregtech:machine:803>]]);
	
//Transfer upgrade
recipes.remove(<engineersworkshop:upgrade:6>);
recipes.addShaped(<engineersworkshop:upgrade:6>,[
	[foilGold,foilGold,foilGold],
	[<minecraft:hopper>,<engineersworkshop:upgrade>,<minecraft:hopper>],
	[foilGold,circuitBasic,foilGold]]);
	
//Filter upgrade
recipes.remove(<engineersworkshop:upgrade:7>);
recipes.addShaped(<engineersworkshop:upgrade:7>,[
	[plateIron,plateIron,plateIron],
	[<integrateddynamics:cable>,circuitBasic,<integrateddynamics:cable>],
	[plateSteel,<engineersworkshop:upgrade>,plateSteel]]);
	
//Transfer capacity upgrade
recipes.remove(<engineersworkshop:upgrade:8>);
recipes.addShaped(<engineersworkshop:upgrade:8>,[
	[plateIron,plateIron,plateIron],
	[circuitBasic,plateDenseRedAlloy,foilGold],
	[foilGold,<engineersworkshop:upgrade>,foilGold]]);
	
//Axe upgrade
recipes.remove(<engineersworkshop:upgrade:9>);
recipes.addShaped(<engineersworkshop:upgrade:9>,[
	[wireRedAlloy,pistonLV,wireRedAlloy],
	[plateSteel,<engineersworkshop:upgrade>,plateSteel],
	[<minecraft:iron_bars>,circuitBasic,<minecraft:iron_bars>]]);