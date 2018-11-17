# Storage Drawers
# by hipster
# for Revival modpack

# Imports

# Variables

# Recipes
//Temperature regulator
recipes.remove(<tanaddons:temp_regulator>);
recipes.addShaped(<tanaddons:temp_regulator>,[
	[plateSteel,plateSteel,plateSteel],
	[<toughasnails:temperature_coil>,motorLV,<toughasnails:temperature_coil:1>],
	[circuitGood,plateDenseCopper,circuitGood]]);
	
//Portable temperature regulator
recipes.remove(<tanaddons:portable_temp_regulator>);
recipes.addShaped(<tanaddons:portable_temp_regulator>,[
	[plateSteel,sensorMV,plateSteel],
	[circuitGood,<tanaddons:temp_regulator>,circuitGood],
	[wireRedAlloy_X4,<gregtech:meta_item_1:32518>,wireRedAlloy_X4]]);

//Thirst quencher
recipes.remove(<tanaddons:thirst_quencher>);
recipes.addShaped(<tanaddons:thirst_quencher>,[
	[wireRedAlloy_X4,pumpLV,wireRedAlloy_X4],
	[plateSteel,<toughasnails:canteen>,plateSteel],
	[plateSteel,<gregtech:meta_item_1:32518>,plateSteel]]);