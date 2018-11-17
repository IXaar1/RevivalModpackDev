//Created by Affect for Revival Modpack
//additions by hipster

//Nerf Torch recipes
recipes.remove(<minecraft:torch>);
recipes.addShaped("TorchRecipeNormal", <minecraft:torch>,
 [[null,<gregtech:meta_item_1:32627>,null],
  [null,<ore:blockWool>,null],
  [null,<ore:stickWood>,null]]);
  
//Torch with Sulfur dust
recipes.remove(<minecraft:torch>);
recipes.addShaped("TorchRecipeSulfur", <minecraft:torch> * 4,
 [[null,<ore:dustSulfur>,null],
  [null,<ore:blockWool>,null],
  [null,<ore:stickWood>,null]]);

//Torch recipe Phosphorus dust 
recipes.remove(<minecraft:torch>);
recipes.addShaped("TorchRecipePhosphorus", <minecraft:torch> * 4,
 [[null,<ore:dustPhosphorus>,null],
  [null,<ore:blockWool>,null],
  [null,<ore:stickWood>,null]]);
  
//Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped("ChestVanilla", <minecraft:chest>,
 [[<ore:logWood>,<ore:ingotCopper>,<ore:logWood>],
  [<ore:string>,<primalchests:primal_chest_advanced>,<ore:string>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
  
//Compass
recipes.remove(<minecraft:compass>);
recipes.addShaped("CompassVanilla", <minecraft:compass>,
 [[<ore:plateIron>,<ore:stickIronMagnetic>,<ore:plateIron>],
  [<ore:plateIron>,<ore:dustRedstone>,<ore:plateIron>],
  [<ore:plateIron>,<ore:stickIronMagnetic>,<ore:plateIron>]]);
  
//Saddle
recipes.remove(<minecraft:saddle>);
recipes.addShaped("SaddleVanilla", <minecraft:saddle>,
 [[<ore:leather>,<ore:leather>,<ore:leather>],
  [<ore:ingotCopper>,<ore:blockWool>,<ore:ingotCopper>],
  [<animalium:bear_claw>,null,<animalium:bear_claw>]]);

//Boat
recipes.remove(<minecraft:boat>);
recipes.addShaped("BoatVanilla", <minecraft:boat>,
 [[null,null,null],
  [<ore:stickWood>,<ore:plateRubber>,<ore:stickWood>],
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);
  
//Name Tag
recipes.remove(<minecraft:name_tag>);
recipes.addShaped("NameTagVanilla", <minecraft:name_tag>,
 [[null,null,null],
  [<ore:dye>,<ore:paperEmpty>,<ore:dye>],
  [null,null,null]]);

//Cauldron
recipes.remove(<minecraft:cauldron>);
recipes.addShaped("CauldronFromSteel", <minecraft:cauldron>,
 [[<ore:plateSteel>,null,<ore:plateSteel>],
  [<ore:plateSteel>,<ore:craftingToolHardHammer>,<ore:plateSteel>],
  [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);
  
//Enchantment table
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped("EnchantmentTableAluminium", <minecraft:enchanting_table>,
 [[<ore:gearGold>,<gregtech:meta_item_1:32725>,<ore:gearGold>],
  [<ore:gemExquisiteEmerald>,<ore:craftingBook>,<ore:gemExquisiteDiamond>],
  [<ore:blockAluminium>,<ore:blockAluminium>,<ore:blockAluminium>]]);
  
//Piston
/*recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
	[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
	[<ore:stone>,plateIron,<ore:stone>],
	[<ore:cobblestone>,ingotRedAlloy,<ore:cobblestone>]]);*/
