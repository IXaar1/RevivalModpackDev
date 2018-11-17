//Created by Affect for Revival Modpack
//additions by hipster
import mods.gregtech.recipe.RecipeMap;
# Variables
val smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");

//Primitive Blast Furnace
recipes.remove(<gregtech:machine:510>);
recipes.addShaped("PrimitiveBlastFurnace", <gregtech:machine:510>,
 [[<gregtech:metal_casing:1>,<gregtech:machine_casing:11>,<gregtech:metal_casing:1>],
  [<gregtech:machine_casing:11>,<ore:craftingToolWrench>,<gregtech:machine_casing:11>],
  [<gregtech:metal_casing:1>,<gregtech:machine_casing:11>,<gregtech:metal_casing:1>]]);
 
//Flint axe head
recipes.addShaped("FlintAxeHead", <gregtech:meta_item_2:3220>,
 [[<minecraft:flint>,<minecraft:flint>],
  [<minecraft:flint>]]);
  
//Anvil
recipes.remove(<minecraft:anvil>);

solidifier.findRecipe(16,[<gregtech:meta_item_1:32314>],[<liquid:iron> * 4464]).remove();
solidifier.findRecipe(16,[<gregtech:meta_item_1:32314>],[<liquid:wrought_iron>*4464]).remove();

smelter.findRecipe(64,[<minecraft:iron_ingot>*31,<gregtech:meta_item_1:32314>],null).remove();
smelter.findRecipe(64,[<gregtech:meta_item_1:10197>*31,<gregtech:meta_item_1:32314>],null).remove();

smelter.recipeBuilder()
    .inputs([<ore:blockSteel> * 9,<gregtech:meta_item_1:32314>*1])
    .outputs(<minecraft:anvil> * 1)
    .duration(15872)
    .EUt(64)
    .buildAndRegister();