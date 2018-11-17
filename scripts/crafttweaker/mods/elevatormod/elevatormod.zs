//Created by Affect for Revival Modpack

//Imports
import mods.gregtech.recipe.RecipeMap;

//Variables
val press as RecipeMap = RecipeMap.getByName("forming_press");
val chemicalbath as RecipeMap = RecipeMap.getByName("chemical_bath");
val assembler as RecipeMap = RecipeMap.getByName("assembler");

//White elevator
recipes.remove(<elevatorid:elevator_white>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeWhite> * 8])
    .outputs(<elevatorid:elevator_white> * 2)
    .duration(350)
    .EUt(64)
    .buildAndRegister();
	
//Orange elevator	
recipes.remove(<elevatorid:elevator_orange>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeOrange> * 8])
    .outputs(<elevatorid:elevator_orange> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_orange>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeOrange> * 4)
    .outputs(<elevatorid:elevator_orange> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Magenta elevator
recipes.remove(<elevatorid:elevator_magenta>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeMagenta> * 8])
    .outputs(<elevatorid:elevator_magenta> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_magenta>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeMagenta> * 4)
    .outputs(<elevatorid:elevator_magenta> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Light blue elevator	
recipes.remove(<elevatorid:elevator_light_blue>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeLightBlue> * 8])
    .outputs(<elevatorid:elevator_light_blue> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_light_blue>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeLightBlue> * 4)
    .outputs(<elevatorid:elevator_light_blue> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Yellow elevator	 
recipes.remove(<elevatorid:elevator_yellow>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeYellow> * 8])
    .outputs(<elevatorid:elevator_yellow> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_yellow>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeYellow> * 4)
    .outputs(<elevatorid:elevator_yellow> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Lime elevator
recipes.remove(<elevatorid:elevator_lime>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeLime> * 8])
    .outputs(<elevatorid:elevator_lime> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_lime>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeLime> * 4)
    .outputs(<elevatorid:elevator_lime> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Pink elevator 	
recipes.remove(<elevatorid:elevator_pink>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyePink> * 8])
    .outputs(<elevatorid:elevator_pink> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_pink>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyePink> * 4)
    .outputs(<elevatorid:elevator_pink> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Gray elevator	
recipes.remove(<elevatorid:elevator_gray>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeGray> * 8])
    .outputs(<elevatorid:elevator_gray> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_gray>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeGray> * 4)
    .outputs(<elevatorid:elevator_gray> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Silver elevator
recipes.remove(<elevatorid:elevator_silver>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeSilver> * 8])
    .outputs(<elevatorid:elevator_silver> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_silver>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeSilver> * 4)
    .outputs(<elevatorid:elevator_silver> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Cyan elevator	
recipes.remove(<elevatorid:elevator_cyan>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeCyan> * 8])
    .outputs(<elevatorid:elevator_cyan> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_cyan>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeCyan> * 4)
    .outputs(<elevatorid:elevator_cyan> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Purple elevator	
recipes.remove(<elevatorid:elevator_purple>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyePurple> * 8])
    .outputs(<elevatorid:elevator_purple> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_purple>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyePurple> * 4)
    .outputs(<elevatorid:elevator_purple> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Blue elevator	
recipes.remove(<elevatorid:elevator_blue>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeBlue> * 8])
    .outputs(<elevatorid:elevator_blue> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_blue>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeBlue> * 4)
    .outputs(<elevatorid:elevator_blue> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Brown elevator
recipes.remove(<elevatorid:elevator_brown>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeBrown> * 8])
    .outputs(<elevatorid:elevator_brown> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_brown>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeBrown> * 4)
    .outputs(<elevatorid:elevator_brown> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Green	elevator
recipes.remove(<elevatorid:elevator_green>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeGreen> * 8])
    .outputs(<elevatorid:elevator_green> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_green>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeGreen> * 4)
    .outputs(<elevatorid:elevator_green> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Red elevator	
recipes.remove(<elevatorid:elevator_red>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeRed> * 8])
    .outputs(<elevatorid:elevator_red> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_red>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeRed> * 4)
    .outputs(<elevatorid:elevator_red> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();
	
//Black	elevator
recipes.remove(<elevatorid:elevator_black>);
press.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681> * 2,<gregtech:meta_item_1:32631> * 2, <gregtech:meta_item_1:32641> * 2, <gregtech:meta_item_1:32601> * 2, <gregtech:frame_0> * 2, <ore:dyeBlack> * 8])
    .outputs(<elevatorid:elevator_black> * 2)
    .duration(359)
    .EUt(64)
    .buildAndRegister();
chemicalbath.recipeBuilder()
    .fluidInputs(<liquid:chlorine> * 90)
	.inputs(<elevatorid:elevator_black>)
    .outputs(<elevatorid:elevator_white> * 1)
    .duration(200)
    .EUt(4)
    .buildAndRegister();
assembler.recipeBuilder()
	.inputs(<elevatorid:elevator_white> * 1, <ore:dyeBlack> * 4)
    .outputs(<elevatorid:elevator_black> * 1)
    .duration(260)
    .EUt(4)
    .buildAndRegister();