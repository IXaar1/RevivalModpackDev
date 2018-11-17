# Ingots to nuggets in forge hammer
# By hipster
# for Revival Modpack

# ======== Imports ========

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
print("Starting IngotsToNuggets.zs");

# ======== Variables ========

val ToEdit = [<minecraft:gold_nugget>,<minecraft:iron_nugget>,<gregtech:meta_item_1:9001>,<gregtech:meta_item_1:9002>,<gregtech:meta_item_1:9003>,<gregtech:meta_item_1:9006>,<gregtech:meta_item_1:9007>,<gregtech:meta_item_1:9008>,<gregtech:meta_item_1:9010>,<gregtech:meta_item_1:9011>,

<gregtech:meta_item_1:9012>,<gregtech:meta_item_1:9013>,<gregtech:meta_item_1:9014>,<gregtech:meta_item_1:9016>,<gregtech:meta_item_1:9017>,<gregtech:meta_item_1:9018>,<gregtech:meta_item_1:9020>,<gregtech:meta_item_1:9021>,
<gregtech:meta_item_1:9036>,<gregtech:meta_item_1:9035>,

<gregtech:meta_item_1:9034>,<gregtech:meta_item_1:9032>,<gregtech:meta_item_1:9031>,<gregtech:meta_item_1:9027>,<gregtech:meta_item_1:9025>,<gregtech:meta_item_1:9024>,<gregtech:meta_item_1:9022>,<gregtech:meta_item_1:9047>,<gregtech:meta_item_1:9045>,<gregtech:meta_item_1:9044>,

<gregtech:meta_item_1:9043>,<gregtech:meta_item_1:9042>,<gregtech:meta_item_1:9041>,<gregtech:meta_item_1:9039>,<gregtech:meta_item_1:9038>,<gregtech:meta_item_1:9037>,<gregtech:meta_item_1:9059>,<gregtech:meta_item_1:9058>,<gregtech:meta_item_1:9056>,<gregtech:meta_item_1:9055>,

<gregtech:meta_item_1:9054>,<gregtech:meta_item_1:9053>,<gregtech:meta_item_1:9052>,<gregtech:meta_item_1:9051>,<gregtech:meta_item_1:9049>,<gregtech:meta_item_1:9069>,<gregtech:meta_item_1:9068>,<gregtech:meta_item_1:9067>,<gregtech:meta_item_1:9066>,<gregtech:meta_item_1:9064>,

<gregtech:meta_item_1:9063>,<gregtech:meta_item_1:9062>,<gregtech:meta_item_1:9061>,<gregtech:meta_item_1:9060>,<gregtech:meta_item_1:9079>,<gregtech:meta_item_1:9078>,<gregtech:meta_item_1:9077>,<gregtech:meta_item_1:9076>,<gregtech:meta_item_1:9075>,<gregtech:meta_item_1:9074>,

<gregtech:meta_item_1:9072>,<gregtech:meta_item_1:9071>,<gregtech:meta_item_1:9070>,<gregtech:meta_item_1:9129>,<gregtech:meta_item_1:9127>,<gregtech:meta_item_1:9126>,<gregtech:meta_item_1:9112>,<gregtech:meta_item_1:9109>,<gregtech:meta_item_1:9095>,<gregtech:meta_item_1:9094>,

<gregtech:meta_item_1:9091>,<gregtech:meta_item_1:9087>,<gregtech:meta_item_1:9183>,<gregtech:meta_item_1:9180>,<gregtech:meta_item_1:9145>,<gregtech:meta_item_1:9144>,<gregtech:meta_item_1:9141>,<gregtech:meta_item_1:9140>,<gregtech:meta_item_1:9135>,<gregtech:meta_item_1:9134>,

<gregtech:meta_item_1:9133>,<gregtech:meta_item_1:9207>,<gregtech:meta_item_1:9205>,<gregtech:meta_item_1:9204>,<gregtech:meta_item_1:9200>,<gregtech:meta_item_1:9197>,<gregtech:meta_item_1:9195>,<gregtech:meta_item_1:9192>,<gregtech:meta_item_1:9189>,<gregtech:meta_item_1:9184>,

<gregtech:meta_item_1:9235>,<gregtech:meta_item_1:9234>,<gregtech:meta_item_1:9233>,<gregtech:meta_item_1:9232>,<gregtech:meta_item_1:9231>,<gregtech:meta_item_1:9230>,<gregtech:meta_item_1:9229>,<gregtech:meta_item_1:9228>,<gregtech:meta_item_1:9227>,<gregtech:meta_item_1:9303>,

<gregtech:meta_item_1:9302>,<gregtech:meta_item_1:9301>,<gregtech:meta_item_1:9300>,<gregtech:meta_item_1:9299>,<gregtech:meta_item_1:9298>,<gregtech:meta_item_1:9297>,<gregtech:meta_item_1:9238>,<gregtech:meta_item_1:9237>,<gregtech:meta_item_1:9353>,<gregtech:meta_item_1:9312>,

<gregtech:meta_item_1:9311>,<gregtech:meta_item_1:9310>,<gregtech:meta_item_1:9309>,<gregtech:meta_item_1:9308>,<gregtech:meta_item_1:9307>,<gregtech:meta_item_1:9304>
] as IItemStack[];

val Ingredients = [<ore:ingotGold>,<ore:ingotIron>,<ore:ingotAluminium>,<ore:ingotAmericium>,<ore:ingotAntimony>,<ore:ingotBarium>,<ore:ingotBeryllium>,<ore:ingotBismuth>,<ore:ingotCaesium>,<ore:ingotCalcium>,

<ore:ingotCarbon>,<ore:ingotCadmium>,<ore:ingotCerium>,<ore:ingotChrome>,<ore:ingotCobalt>,<ore:ingotCopper>,<ore:ingotDysprosium>,<ore:ingotErbium>,<ore:ingotLithium>,<ore:ingotLead>,

<ore:ingotLanthanum>,<ore:ingotIridium>,<ore:ingotIndium>,<ore:ingotHolmium>,<ore:ingotGallium>,<ore:ingotGadolinium>,<ore:ingotEuropium>,<ore:ingotOsmium>,<ore:ingotNiobium>,<ore:ingotNickel>,

<ore:ingotDarmstadtium>,<ore:ingotNeodymium>,<ore:ingotMolybdenum>,<ore:ingotManganese>,<ore:ingotMagnesium>,<ore:ingotLutetium>,<ore:ingotSamarium>,<ore:ingotRubidium>,<ore:ingotPromethium>,<ore:ingotPraseodymium>,

<ore:ingotPotassium>,<ore:ingotPlutonium241>,<ore:ingotPlutonium>,<ore:ingotPlatinum>,<ore:ingotPalladium>,<ore:ingotThorium>,<ore:ingotTerbium>,<ore:ingotTellurium>,<ore:ingotTantalum>,<ore:ingotStrontium>,

<ore:ingotSodium>,<ore:ingotSilver>,<ore:ingotSilicon>,<ore:ingotScandium>,<ore:ingotZinc>,<ore:ingotYttrium>,<ore:ingotVanadium>,<ore:ingotUranium235>,<ore:ingotUranium>,<ore:ingotTungsten>,

<ore:ingotTitanium>,<ore:ingotTin>,<ore:ingotThulium>,<ore:ingotMagnalium>,<ore:ingotKanthal>,<ore:ingotInvar>,<ore:ingotElectrum>,<ore:ingotCupronickel>,<ore:ingotBronze>,<ore:ingotBrass>,

<ore:ingotBatteryAlloy>,<ore:ingotAnnealedCopper>,<ore:ingotStainlessSteel>,<ore:ingotSolderingAlloy>,<ore:ingotPolytetrafluoroethylene>,<ore:ingotPolycaprolactam>,<ore:ingotPlastic>,<ore:ingotPigIron>,<ore:ingotNiobiumTitanium>,<ore:ingotNiobiumNitride>,

<ore:ingotNichrome>,<ore:ingotOsmiridium>,<ore:ingotGraphene>,<ore:ingotGraphite>,<ore:ingotYttriumBariumCuprate>,<ore:ingotWroughtIron>,<ore:ingotVanadiumGallium>,<ore:ingotUltimet>,<ore:ingotTinAlloy>,<ore:ingotSteel>,

<ore:ingotTungstenSteel>,<ore:ingotDamascusSteel>,<ore:ingotBlueSteel>,<ore:ingotRedSteel>,<ore:ingotBlackSteel>,<ore:ingotBismuthBronze>,<ore:ingotBlackBronze>,<ore:ingotRoseGold>,<ore:ingotSterlingSilver>,<ore:ingotHsse>,

<ore:ingotHssg>,<ore:ingotVanadiumSteel>,<ore:ingotTungstenCarbide>,<ore:ingotNeodymiumMagnetic>,<ore:ingotSteelMagnetic>,<ore:ingotIronMagnetic>,<ore:ingotCobaltBrass>,<ore:ingotRedAlloy>,<ore:ingotYtterbium>,<ore:ingotDuranium>,

<ore:ingotTritanium>,<ore:ingotNaquadria>,<ore:ingotNaquadahEnriched>,<ore:ingotNaquadahAlloy>,<ore:ingotNaquadah>,<ore:ingotHsss>
] as IOreDictEntry[];

# ======== Recipes ========

for i, item in ToEdit{
	recipes.remove(item);
	
	val ingredient = Ingredients[i];
	val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
	forgeHammer.recipeBuilder()
    .inputs(ingredient*1)
    .outputs(item*9)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
}