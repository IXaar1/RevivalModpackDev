//Created by hipster & Affect for Revival Modpack

//Imports
import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;

//Variables
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val engraver as RecipeMap = RecipeMap.getByName("laser_engraver");
val press as RecipeMap = RecipeMap.getByName("forming_press");
val fluidcanner as RecipeMap = RecipeMap.getByName("fluid_canner");

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
	
	
	