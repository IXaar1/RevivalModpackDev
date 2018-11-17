//Created by Affect for Revival Modpack

//Primal Chest
recipes.remove(<primalchests:primal_chest>);
recipes.addShaped("PrimalChest", <primalchests:primal_chest>,
 [[<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:string>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
  
//Primal Chest Advanced
recipes.remove(<primalchests:primal_chest_advanced>);
recipes.addShaped("PrimalChestAdvadced", <primalchests:primal_chest_advanced>,
 [[<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<primalchests:primal_chest>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);