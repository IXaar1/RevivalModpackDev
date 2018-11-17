# Ingots to compressor
# By hipster
# for Revival Modpack

# ======== Imports ========

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Starting IngotsFromNuggetsToCompressor.zs");

# ======== Variables ========

val ToEdit = [<minecraft:iron_ingot>,<minecraft:gold_ingot>,<gregtech:meta_item_1:10001>,<gregtech:meta_item_1:10002>,<gregtech:meta_item_1:10003>,<gregtech:meta_item_1:10006>,<gregtech:meta_item_1:10007>,<gregtech:meta_item_1:10008>,<gregtech:meta_item_1:10010>,<gregtech:meta_item_1:10011>,

<gregtech:meta_item_1:10012>,<gregtech:meta_item_1:10013>,<gregtech:meta_item_1:10014>,<gregtech:meta_item_1:10016>,<gregtech:meta_item_1:10017>,<gregtech:meta_item_1:10018>,<gregtech:meta_item_1:10020>,<gregtech:meta_item_1:10021>,<gregtech:meta_item_1:10022>,<gregtech:meta_item_1:10024>,

<gregtech:meta_item_1:10025>,<gregtech:meta_item_1:10027>,<gregtech:meta_item_1:10031>,<gregtech:meta_item_1:10032>,<gregtech:meta_item_1:10034>,<gregtech:meta_item_1:10035>,<gregtech:meta_item_1:10036>,<gregtech:meta_item_1:10037>,<gregtech:meta_item_1:10038>,<gregtech:meta_item_1:10039>,

<gregtech:meta_item_1:10041>,<gregtech:meta_item_1:10042>,<gregtech:meta_item_1:10043>,<gregtech:meta_item_1:10044>,<gregtech:meta_item_1:10045>,<gregtech:meta_item_1:10047>,<gregtech:meta_item_1:10049>,<gregtech:meta_item_1:10051>,<gregtech:meta_item_1:10052>,<gregtech:meta_item_1:10053>,

<gregtech:meta_item_1:10054>,<gregtech:meta_item_1:10055>,<gregtech:meta_item_1:10056>,<gregtech:meta_item_1:10058>,<gregtech:meta_item_1:10059>,<gregtech:meta_item_1:10060>,<gregtech:meta_item_1:10061>,<gregtech:meta_item_1:10062>,<gregtech:meta_item_1:10063>,<gregtech:meta_item_1:10064>,

<gregtech:meta_item_1:10066>,<gregtech:meta_item_1:10067>,<gregtech:meta_item_1:10068>,<gregtech:meta_item_1:10069>,<gregtech:meta_item_1:10070>,<gregtech:meta_item_1:10071>,<gregtech:meta_item_1:10072>,<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:10075>,<gregtech:meta_item_1:10076>,

<gregtech:meta_item_1:10077>,<gregtech:meta_item_1:10078>,
<gregtech:meta_item_1:10079>,<gregtech:meta_item_1:10087>,<gregtech:meta_item_1:10091>,<gregtech:meta_item_1:10094>,<gregtech:meta_item_1:10095>,<gregtech:meta_item_1:10109>,<gregtech:meta_item_1:10112>,<gregtech:meta_item_1:10126>,

<gregtech:meta_item_1:10127>,<gregtech:meta_item_1:10129>,<gregtech:meta_item_1:10133>,<gregtech:meta_item_1:10134>,<gregtech:meta_item_1:10135>,<gregtech:meta_item_1:10140>,<gregtech:meta_item_1:10141>,<gregtech:meta_item_1:10144>,<gregtech:meta_item_1:10145>,<gregtech:meta_item_1:10180>,

<gregtech:meta_item_1:10183>,<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:10189>,<gregtech:meta_item_1:10192>,
<gregtech:meta_item_1:10195>,<gregtech:meta_item_1:10197>,
<gregtech:meta_item_1:10200>,<gregtech:meta_item_1:10204>,
<gregtech:meta_item_1:10205>,<gregtech:meta_item_1:10207>,

<gregtech:meta_item_1:10227>,<gregtech:meta_item_1:10228>,<gregtech:meta_item_1:10229>,<gregtech:meta_item_1:10230>,
<gregtech:meta_item_1:10231>,<gregtech:meta_item_1:10232>,
<gregtech:meta_item_1:10233>,<gregtech:meta_item_1:10234>,
<gregtech:meta_item_1:10235>,<gregtech:meta_item_1:10237>,

<gregtech:meta_item_1:10238>,<gregtech:meta_item_1:10297>,<gregtech:meta_item_1:10298>,<gregtech:meta_item_1:10299>,<gregtech:meta_item_1:10300>,<gregtech:meta_item_1:10301>,<gregtech:meta_item_1:10302>,<gregtech:meta_item_1:10303>,<gregtech:meta_item_1:10304>,<gregtech:meta_item_1:10307>,

<gregtech:meta_item_1:10308>,<gregtech:meta_item_1:10309>,<gregtech:meta_item_1:10310>,<gregtech:meta_item_1:10311>,
<gregtech:meta_item_1:10312>,<gregtech:meta_item_1:10353>
] as IItemStack[];

val Ingredients = [<ore:nuggetIron>,<ore:nuggetGold>,<ore:nuggetAluminium>,<ore:nuggetAmericium>,<ore:nuggetAntimony>,<ore:nuggetBarium>,<ore:nuggetBeryllium>,<ore:nuggetBismuth>,<ore:nuggetCaesium>,<ore:nuggetCalcium>,

<ore:nuggetCarbon>,<ore:nuggetCadmium>,<ore:nuggetCerium>,<ore:nuggetChrome>,<ore:nuggetCobalt>,<ore:nuggetCopper>,<ore:nuggetDysprosium>,<ore:nuggetErbium>,<ore:nuggetEuropium>,<ore:nuggetGadolinium>,

<ore:nuggetGallium>,<ore:nuggetHolmium>,<ore:nuggetIndium>,<ore:nuggetIridium>,<ore:nuggetLanthanum>,<ore:nuggetLead>,<ore:nuggetLithium>,<ore:nuggetLutetium>,<ore:nuggetMagnesium>,<ore:nuggetManganese>,

<ore:nuggetMolybdenum>,<ore:nuggetNeodymium>,<ore:nuggetDarmstadtium>,<ore:nuggetNickel>,<ore:nuggetNiobium>,<ore:nuggetOsmium>,<ore:nuggetPalladium>,<ore:nuggetPlatinum>,<ore:nuggetPlutonium>,<ore:nuggetPlutonium241>,

<ore:nuggetPotassium>,<ore:nuggetPraseodymium>,<ore:nuggetPromethium>,<ore:nuggetRubidium>,<ore:nuggetSamarium>,<ore:nuggetScandium>,<ore:nuggetSilicon>,<ore:nuggetSilver>,<ore:nuggetSodium>,<ore:nuggetStrontium>,

<ore:nuggetTantalum>,<ore:nuggetTellurium>,<ore:nuggetTerbium>,<ore:nuggetThorium>,<ore:nuggetThulium>,<ore:nuggetTin>,<ore:nuggetTitanium>,<ore:nuggetTungsten>,<ore:nuggetUranium>,<ore:nuggetUranium235>,

<ore:nuggetVanadium>,<ore:nuggetYttrium>,<ore:nuggetZinc>,<ore:nuggetAnnealedCopper>,<ore:nuggetBatteryAlloy>,<ore:nuggetBrass>,<ore:nuggetBronze>,<ore:nuggetCupronickel>,<ore:nuggetElectrum>,<ore:nuggetInvar>,

<ore:nuggetKanthal>,<ore:nuggetMagnalium>,<ore:nuggetNichrome>,<ore:nuggetNiobiumNitride>,<ore:nuggetNiobiumTitanium>,<ore:nuggetPigIron>,<ore:nuggetPlastic>,<ore:nuggetPolycaprolactam>,<ore:nuggetPolytetrafluoroethylene>,<ore:nuggetSolderingAlloy>,

<ore:nuggetStainlessSteel>,<ore:nuggetSteel>,<ore:nuggetTinAlloy>,<ore:nuggetUltimet>,<ore:nuggetVanadiumGallium>,<ore:nuggetWroughtIron>,<ore:nuggetYttriumBariumCuprate>,<ore:nuggetGraphite>,<ore:nuggetGraphene>,<ore:nuggetOsmiridium>,

<ore:nuggetSterlingSilver>,<ore:nuggetRoseGold>,<ore:nuggetBlackBronze>,<ore:nuggetBismuthBronze>,<ore:nuggetBlackSteel>,<ore:nuggetRedSteel>,<ore:nuggetBlueSteel>,<ore:nuggetDamascusSteel>,<ore:nuggetTungstenSteel>,<ore:nuggetRedAlloy>,

<ore:nuggetCobaltBrass>,<ore:nuggetIronMagnetic>,<ore:nuggetSteelMagnetic>,<ore:nuggetNeodymiumMagnetic>,<ore:nuggetTungstenCarbide>,<ore:nuggetVanadiumSteel>,<ore:nuggetHssg>,<ore:nuggetHsse>,<ore:nuggetHsss>,<ore:nuggetNaquadah>,

<ore:nuggetNaquadahAlloy>,<ore:nuggetNaquadahEnriched>,<ore:nuggetNaquadria>,<ore:nuggetTritanium>,<ore:nuggetDuranium>,<ore:nuggetYtterbium>
] as IOreDictEntry[];

# ======== Recipes ========

for i, item in ToEdit{
	recipes.remove(item);
	
	val ingredient = Ingredients[i];
	val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
	compressor.recipeBuilder()
    .inputs(ingredient*9)
    .outputs(item*1)
    .duration(200)
    .EUt(2)
    .buildAndRegister();
}
print("IngotsFromNuggetsToCompressor.zs loaded");