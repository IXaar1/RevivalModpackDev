# Vanilla blocks to compressor
# By hipster

# ======== Imports ========

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Starting vanilla.zs");

# ======== Variables ========

val ToEdit = [<minecraft:lapis_block>,<minecraft:gold_block>,<minecraft:iron_block>,<minecraft:diamond_block>,<minecraft:emerald_block>,<minecraft:coal_block>
] as IItemStack[];

val Ingredients = [<ore:gemLapis>,<ore:ingotGold>,<ore:ingotIron>,<ore:gemDiamond>,<ore:gemEmerald>,<ore:gemCoal>
] as IOreDictEntry[];

# ======== Recipes ========
recipes.remove(<minecraft:quartz_block>);

for i, item in ToEdit{
	recipes.remove(item);
	
	val ingredient = Ingredients[i];
	val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
	compressor.recipeBuilder()
    .inputs(ingredient*9)
    .outputs(item*1)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
}
print("vanilla.zs loaded");