//Created by hipster & Affect for Revival Modpack

//Imports
import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;

//Variables
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val engraver as RecipeMap = RecipeMap.getByName("laser_engraver");
val press as RecipeMap = RecipeMap.getByName("forming_press");
val fluidcanner as RecipeMap = RecipeMap.getByName("fluid_canner");

//Recipes
//Printed calculation circuit
recipes.remove(<appliedenergistics2:material:16>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
engraver.recipeBuilder()
    .inputs([<gregtech:meta_item_2:23202> * 1])
	.notConsumable(<gregtech:meta_item_1:15157> * 1)
    .outputs(<appliedenergistics2:material:16> * 1)
    .duration(1200)
    .EUt(128)
    .buildAndRegister();
	
//Printed engineering circuit
recipes.remove(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
engraver.recipeBuilder()
    .inputs([<gregtech:meta_item_2:23111> * 1])
	.notConsumable(<gregtech:meta_item_1:15111>)
    .outputs(<appliedenergistics2:material:17> * 1)
    .duration(1600)
    .EUt(128)
    .buildAndRegister();
	
//Printed logic circuit
recipes.remove(<appliedenergistics2:material:18>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 
engraver.recipeBuilder()
    .inputs([<gregtech:meta_item_1:13228> * 1])
	.notConsumable(<gregtech:meta_item_1:15244>)
    .outputs(<appliedenergistics2:material:18> * 1)
    .duration(950)
    .EUt(128)
    .buildAndRegister();
	
//Printed silicon
recipes.remove(<appliedenergistics2:material:20>);
Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
engraver.recipeBuilder()
    .inputs([<projectred-core:resource_item:301> * 1])
	.notConsumable(<gregtech:meta_item_1:15154>)
    .outputs(<appliedenergistics2:material:20> * 1)
    .duration(1200)
    .EUt(128)
    .buildAndRegister();
	
//Logic processor
recipes.remove(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 
press.recipeBuilder()
    .inputs([<appliedenergistics2:material:18> * 1, <appliedenergistics2:material:20> * 1, <gregtech:meta_item_1:12215> * 1])
    .outputs(<appliedenergistics2:material:22> * 1)
    .duration(1800)
    .EUt(64)
    .buildAndRegister();
	
//Calculation processor
recipes.remove(<appliedenergistics2:material:23>);
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 
press.recipeBuilder()
    .inputs([<appliedenergistics2:material:16> * 1, <appliedenergistics2:material:20> * 1, <gregtech:meta_item_1:12215> * 1])
    .outputs(<appliedenergistics2:material:23> * 1)
    .duration(1800)
    .EUt(64)
    .buildAndRegister();
	
//Engineering processor
recipes.remove(<appliedenergistics2:material:24>);
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 
press.recipeBuilder()
    .inputs([<appliedenergistics2:material:17> * 1, <appliedenergistics2:material:20> * 1, <gregtech:meta_item_1:12215> * 1])
    .outputs(<appliedenergistics2:material:24> * 1)
    .duration(2100)
    .EUt(64)
    .buildAndRegister();
	
//Quartz glass
recipes.remove(<appliedenergistics2:quartz_glass>);
press.recipeBuilder()
    .inputs([<ore:gemChippedCertusQuartz> * 6, <ore:blockGlass> * 1])
	.notConsumable(<gregtech:meta_item_1:32308>)
    .outputs(<appliedenergistics2:quartz_glass> * 1)
    .duration(800)
    .EUt(512)
    .buildAndRegister();
	
//Vibrant quartz glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
fluidcanner.recipeBuilder()
    .inputs([<appliedenergistics2:quartz_glass> * 1])
	.fluidInputs(<liquid:glowstone> * 1000)
    .outputs(<appliedenergistics2:quartz_vibrant_glass> * 1)
    .duration(200)
    .EUt(128)
    .buildAndRegister();
	
//ME storage housing
recipes.remove(<appliedenergistics2:material:39>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:12215> * 3, <appliedenergistics2:quartz_glass> * 2, <ore:plateStainlessSteel> * 3, <ore:circuitAdvanced> * 1])
    .outputs(<appliedenergistics2:material:39> * 1)
    .duration(220)
    .EUt(512)
    .buildAndRegister();
	
//ME chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>,[
	[plateStainlessSteel,circuitAdvanced,plateStainlessSteel],
	[MEGlassCable,<gregtech:machine:804>,MEGlassCable],
	[plateStainlessSteel,circuitAdvanced,plateStainlessSteel]]);
	
//ME drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>,[
	[plateTitanium,<appliedenergistics2:material:24>,plateTitanium],
	[MEGlassCable,<appliedenergistics2:chest>,MEGlassCable],
	[plateTitanium,<appliedenergistics2:material:24>,plateTitanium]]);
	
//Crafting unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>,[
	[plateTitanium,<appliedenergistics2:material:22>,plateTitanium],
	[circuitGood,<appliedenergistics2:material:24>,circuitGood],
	[plateTitanium,<appliedenergistics2:material:23>,plateTitanium]]);
	
//Molecular assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>,[
	[plateTitanium,<appliedenergistics2:quartz_vibrant_glass>,plateTitanium],
	[<appliedenergistics2:material:44>,<gregtech:machine:103>,<appliedenergistics2:material:43>],
	[plateTitanium,<appliedenergistics2:quartz_vibrant_glass>,plateTitanium]]);
	
//ME Quantum ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>,[
	[plateTitanium,circuitAdvanced,plateTitanium],
	[<appliedenergistics2:material:24>,<gregtech:machine:625>,MEGlassCable],
	[plateTitanium,circuitAdvanced,plateTitanium]]);
	
//Me quantum ring chamber
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>,[
	[plateTitanium,<appliedenergistics2:material:9>,plateTitanium],
	[<appliedenergistics2:material:9>,<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:material:9>],
	[plateTitanium,<appliedenergistics2:material:9>,plateTitanium]]);
	
//Spatial pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>,[
	[plateTitanium,MEGlassCable,plateTitanium],
	[<appliedenergistics2:fluix_block>,<appliedenergistics2:material:7>,<appliedenergistics2:fluix_block>],
	[plateTitanium,MEGlassCable,plateTitanium]]);
	
//Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port>,[
	[plateTitanium,<appliedenergistics2:spatial_pylon>,plateTitanium],
	[<appliedenergistics2:material:24>,casingEV,<appliedenergistics2:material:24>],
	[plateTitanium,<appliedenergistics2:material:23>,plateTitanium]]);
	
//Me inteface
recipes.remove(<appliedenergistics2:interface>);
recipes.addShaped(<appliedenergistics2:interface>,[
	[plateTitanium,<appliedenergistics2:material:22>,plateTitanium],
	[<appliedenergistics2:material:24>,casingEV,<appliedenergistics2:material:23>],
	[plateTitanium,circuitAdvanced,plateTitanium]]);
	
recipes.addShapeless(<appliedenergistics2:interface>,[<appliedenergistics2:part:440>]);

//Cell workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>,[
	[wrench,<appliedenergistics2:material:39>,screwDriver],
	[screwTitanium,<minecraft:crafting_table>,screwTitanium],
	[plateTitanium,<appliedenergistics2:material:23>,plateTitanium]]);
	
//Me IO port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>,[
	[MEGlassCable,plateTitanium,MEGlassCable],
	[<appliedenergistics2:drive>,<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:drive>],
	[plateTitanium,<appliedenergistics2:material:22>,plateTitanium]]);
	
//Matter condenser
recipes.addShaped(<appliedenergistics2:condenser>,[
	[plateTitanium,pistonHV,plateTitanium],
	[emitterHV,<gregtech:machine_casing:4>,wrench],
	[plateTitanium,pistonHV,plateTitanium]]);
	
//Energy acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>,[
	[plateTitanium,<appliedenergistics2:material:7>,plateTitanium],
	[<appliedenergistics2:material:7>,plateGlowstone,<appliedenergistics2:material:7>],
	[plateTitanium,<appliedenergistics2:material:7>,plateTitanium]]);
	
	
//ME security terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>,[
	[plateTitanium,<appliedenergistics2:chest>,plateTitanium],
	[MEGlassCable,<appliedenergistics2:material:37>,MEGlassCable],
	[plateTitanium,<appliedenergistics2:material:24>,plateTitanium]]);	
	
//Fluix glass cable
recipes.remove(MEGlassCable);
recipes.addShaped(MEGlassCable*3,[
	[stickCertusQuartz,<appliedenergistics2:material:7>,stickCertusQuartz],
	[<appliedenergistics2:part:140>,<appliedenergistics2:part:140>,<appliedenergistics2:part:140>],
	[stickCertusQuartz,<appliedenergistics2:material:7>,stickCertusQuartz]]);
	
//ME covered cable
recipes.remove(<appliedenergistics2:part:36>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:part:16> * 1])
		.fluidInputs([<liquid:rubber>*1152])
			.property("circuit", 25)
    .outputs(<appliedenergistics2:part:36> * 1)
    .duration(200)
    .EUt(128)
    .buildAndRegister();
	
//Annihilation core
recipes.remove(<appliedenergistics2:material:44>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:12>*2,stickNetherQuartz*4,<appliedenergistics2:material:22>*2])
    .outputs(<appliedenergistics2:material:44>*2)
    .duration(1200)
    .EUt(128)
    .buildAndRegister();
	
//Formation core
recipes.remove(<appliedenergistics2:material:43>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:12>*2,stickCertusQuartz*4,<appliedenergistics2:material:22>*2])
    .outputs(<appliedenergistics2:material:43>*2)
    .duration(1200)
    .EUt(128)
    .buildAndRegister();
	
//Fluix pearl
recipes.remove(<appliedenergistics2:material:9>);
assembler.recipeBuilder()
    .inputs([plateEnderEye*4,<appliedenergistics2:material:12>*4,<minecraft:ender_pearl>*2])
    .outputs(<appliedenergistics2:material:9>*2)
    .duration(1800)
    .EUt(128)
    .buildAndRegister();
	
//Wireless receiver
recipes.remove(<appliedenergistics2:material:41>);
press.recipeBuilder()
    .inputs([<appliedenergistics2:part:140>*2,<ore:dustEnderEye>*1,circuitAdvanced*1,<appliedenergistics2:material:9>*1,plateCertusQuartz*2])
    .outputs(<appliedenergistics2:material:41> * 1)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
	
//Illuminated panel
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShapeless(<appliedenergistics2:part:180>,[<appliedenergistics2:part:200>]);

recipes.addShaped(<appliedenergistics2:part:180>,[
	[screwDriver,plateTitanium,hammer],
	[screwStainlessSteel,<projectred-core:resource_item:510>,screwStainlessSteel],
	[plateGlowstone,plateRedAlloy,plateGlowstone]]);
	
//ME terminal
recipes.remove(<appliedenergistics2:part:380>);
assembler.recipeBuilder()
    .inputs([plateCertusQuartz*4,circuitGood*2,<ore:itemIlluminatedPanel>])
    .outputs(<appliedenergistics2:part:380>*1)
    .duration(1800)
    .EUt(256)
    .buildAndRegister();
	
//ME crafting terminal
recipes.remove(<appliedenergistics2:part:360>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:part:380>*1,<appliedenergistics2:material:24>*2,<engineersworkshop:blocktable>*1])
    .outputs(<appliedenergistics2:part:360>*1)
    .duration(800)
    .EUt(256)
    .buildAndRegister();
	
//ME inteface terminal
recipes.remove(<appliedenergistics2:part:480>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:part:440>*1,<appliedenergistics2:part:380>*1,<appliedenergistics2:material:24>*2])
    .outputs(<appliedenergistics2:part:480>*1)
    .duration(800)
    .EUt(256)
    .buildAndRegister();
	
//ME conversion monitor
recipes.remove(<appliedenergistics2:part:420>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:44>*2,<appliedenergistics2:part:380>*1,<appliedenergistics2:material:24>*2])
    .outputs(<appliedenergistics2:part:420>*1)
    .duration(800)
    .EUt(256)
    .buildAndRegister();
	
//ME Pattern terminal
recipes.remove(<appliedenergistics2:part:340>);
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:52>*1,<appliedenergistics2:part:380>*1,<appliedenergistics2:material:24>*2])
    .outputs(<appliedenergistics2:part:340>*1)
    .duration(800)
    .EUt(256)
    .buildAndRegister();
	
//ME wireless terminal
recipes.remove(<appliedenergistics2:wireless_terminal>);
recipes.addShaped(<appliedenergistics2:wireless_terminal>,[
	[<appliedenergistics2:material:41>,<appliedenergistics2:part:380>,<appliedenergistics2:material:41>],
	[plateCertusQuartz,<appliedenergistics2:material:24>,plateCertusQuartz],
	[plateCertusQuartz,<gregtech:meta_item_1:32531>,plateCertusQuartz]]);




	
	
	