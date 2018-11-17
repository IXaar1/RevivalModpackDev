# Vanilla blocks to compressor
# By hipster

# ======== Imports ========

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Starting BlocksFromIngots.zs");

# ======== Variables ========

val ToEdit = [<gregtech:compressed_11>,<gregtech:compressed_11:1>,<gregtech:compressed_11:2>,<gregtech:compressed_11:7>,<gregtech:compressed_11:8>,<gregtech:compressed_11:9>,<gregtech:compressed_11:10>,<gregtech:compressed_2>,<gregtech:compressed_2:1>,<gregtech:compressed_2:2>,

<gregtech:compressed_2:3>,<gregtech:compressed_2:4>,<gregtech:compressed_2:6>,<gregtech:compressed_2:7>,<gregtech:compressed_2:8>,<gregtech:compressed_2:9>,<gregtech:compressed_2:10>,<gregtech:compressed_2:11>,<gregtech:compressed_2:12>,<gregtech:compressed_2:13>,

<gregtech:compressed_2:14>,<gregtech:compressed_2:15>,<gregtech:compressed_8>,<gregtech:compressed_8:3>,<gregtech:compressed_8:4>,<gregtech:compressed_8:6>,<gregtech:compressed_8:8>,<gregtech:compressed_8:9>,<gregtech:compressed_8:11>,<gregtech:compressed_8:14>,

<gregtech:compressed_8:15>,<gregtech:compressed_0>,<gregtech:compressed_0:1>,<gregtech:compressed_0:2>,<gregtech:compressed_0:4>,<gregtech:compressed_0:5>,<gregtech:compressed_0:6>,<gregtech:compressed_0:8>,<gregtech:compressed_0:9>,<gregtech:compressed_0:10>,

<gregtech:compressed_0:11>,<gregtech:compressed_0:12>,<gregtech:compressed_0:13>,<gregtech:compressed_0:14>,<gregtech:compressed_0:15>,<gregtech:compressed_6>,<gregtech:compressed_6:1>,<gregtech:compressed_6:2>,<gregtech:compressed_6:3>,<gregtech:compressed_6:7>,

<gregtech:compressed_6:8>,<gregtech:compressed_6:9>,<gregtech:compressed_6:12>,<gregtech:compressed_6:13>,<gregtech:compressed_14>,<gregtech:compressed_7:15>,<gregtech:compressed_7:9>,<gregtech:compressed_7:12>,<gregtech:compressed_7:8>,<gregtech:compressed_7:1>,

<gregtech:compressed_7>,<gregtech:compressed_13:1>,<gregtech:compressed_6:14>,<gregtech:compressed_14:3>,<gregtech:compressed_14:2>,<gregtech:compressed_14:1>,<gregtech:compressed_9:12>,<gregtech:compressed_9:11>,<gregtech:compressed_9:10>,<gregtech:compressed_9:8>,

<gregtech:compressed_9:7>,<gregtech:compressed_9:6>,<gregtech:compressed_9:5>,<gregtech:compressed_9:4>,<gregtech:compressed_9:3>,<gregtech:compressed_4:9>,<gregtech:compressed_4:8>,<gregtech:compressed_4:7>,<gregtech:compressed_4:3>,<gregtech:compressed_4:1>,

<gregtech:compressed_4>,<gregtech:compressed_9:15>,<gregtech:compressed_9:14>,<gregtech:compressed_9:13>,<gregtech:compressed_15:4>,<gregtech:compressed_15:2>,<gregtech:compressed_5:13>,<gregtech:compressed_5:10>,<gregtech:compressed_5:7>,<gregtech:compressed_5:5>,

<gregtech:compressed_5:2>,<gregtech:compressed_5>,<gregtech:compressed_4:10>,<gregtech:compressed_3:8>,<gregtech:compressed_3:7>,<gregtech:compressed_3:6>,<gregtech:compressed_3:5>,<gregtech:compressed_3:4>,<gregtech:compressed_3:2>,<gregtech:compressed_3:1>,

<gregtech:compressed_3>,<gregtech:compressed_1:15>,<gregtech:compressed_10:7>,<gregtech:compressed_10>,<gregtech:compressed_3:15>,<gregtech:compressed_3:14>,<gregtech:compressed_3:13>,<gregtech:compressed_3:12>,<gregtech:compressed_3:11>,<gregtech:compressed_3:10>,

<gregtech:compressed_3:9>,<gregtech:compressed_9:2>,<gregtech:compressed_10:15>,<gregtech:compressed_10:14>,<gregtech:compressed_10:13>,<gregtech:compressed_10:12>,<gregtech:compressed_10:11>,<gregtech:compressed_10:10>,<gregtech:compressed_10:9>,<gregtech:compressed_10:8>,

<gregtech:compressed_1:14>,<gregtech:compressed_1:13>,<gregtech:compressed_1:12>,<gregtech:compressed_1:11>,<gregtech:compressed_1:10>,<gregtech:compressed_1:9>,<gregtech:compressed_1:8>,<gregtech:compressed_1:7>,<gregtech:compressed_1:6>,<gregtech:compressed_1:5>,

<gregtech:compressed_1:4>,<gregtech:compressed_1:3>,<gregtech:compressed_1:2>,<gregtech:compressed_1:1>,<gregtech:compressed_1>,<gregtech:compressed_14:13>,<gregtech:compressed_14:12>,<gregtech:compressed_14:11>,<gregtech:compressed_14:10>,<gregtech:compressed_14:9>,

<gregtech:compressed_14:8>,<gregtech:compressed_14:7>,<gregtech:compressed_14:6>,<gregtech:compressed_14:5>,<gregtech:compressed_14:4>
] as IItemStack[];

val Ingredients = [<ore:ingotTungstenSteel>,<ore:ingotRedAlloy>,<ore:ingotCobaltBrass>,<ore:gemGarnetRed>,<ore:gemGarnetYellow>,<ore:dustSugar>,<ore:gemVinteum>,<ore:ingotDarmstadtium>,<ore:ingotNickel>,<ore:ingotNiobium>,

<ore:ingotOsmium>,<ore:ingotPalladium>,<ore:ingotPlatinum>,<ore:ingotPlutonium>,<ore:ingotPlutonium241>,<ore:ingotPotassium>,<ore:ingotPraseodymium>,<ore:ingotPromethium>,<ore:ingotRubidium>,<ore:ingotSamarium>,

<ore:ingotScandium>,<ore:ingotSilicon>,<ore:ingotSolderingAlloy>,<ore:ingotStainlessSteel>,<ore:ingotSteel>,<ore:gemTanzanite>,<ore:ingotTinAlloy>,<ore:gemTopaz>,<ore:ingotUltimet>,<ore:ingotVanadiumGallium>,

<ore:ingotWroughtIron>,<ore:ingotAluminium>,<ore:ingotAmericium>,<ore:ingotAntimony>,<ore:ingotBarium>,<ore:ingotBeryllium>,<ore:ingotBismuth>,<ore:ingotCaesium>,<ore:ingotCalcium>,<ore:ingotCarbon>,

<ore:ingotCadmium>,<ore:ingotCerium>,<ore:ingotChrome>,<ore:ingotCobalt>,<ore:ingotCopper>,<ore:ingotInvar>,<ore:ingotKanthal>,<ore:gemLazurite>,<ore:ingotMagnalium>,<ore:ingotNichrome>,

<ore:ingotNiobium>,<ore:ingotNiobiumTitanium>,<ore:ingotPigIron>,<ore:ingotPlastic>,<ore:ingotIronMagnetic>,<ore:gemSodalite>,<ore:gemRuby>,<ore:gemSapphire>,<ore:ingotRubber>,<ore:ingotPolytetrafluoroethylene>,

<ore:ingotPolycaprolactam>,<ore:gemMonazite>,<ore:ingotEpoxid>,<ore:ingotTungstenCarbide>,<ore:ingotNeodymiumMagnetic>,<ore:ingotSteelMagnetic>,<ore:gemOpal>,<ore:gemOlivine>,<ore:gemLignite>,<ore:ingotOsmiridium>,

<ore:gemJasper>,<ore:ingotGraphene>,<ore:ingotGraphite>,<ore:gemQuartzite>,<ore:gemCertusQuartz>,<ore:ingotBrass>,<ore:gemBlueTopaz>,<ore:ingotBatteryAlloy>,<ore:ingotAnnealedCopper>,<ore:gemAlmandine>,

<ore:ingotZinc>,<ore:gemEnderPearl>,<ore:dustBlaze>,<ore:gemAmethyst>,<ore:ingotYtterbium>,<ore:gemNetherStar>,<ore:gemRutile>,<ore:gemGreenSapphire>,<ore:ingotElectrum>,<ore:ingotCupronickel>,

<ore:gemCinnabar>,<ore:gemCharcoal>,<ore:ingotBronze>,<ore:ingotThulium>,<ore:ingotThorium>,<ore:ingotTerbium>,<ore:ingotTellurium>,<ore:ingotTantalum>,<ore:ingotStrontium>,<ore:ingotSodium>,

<ore:ingotSilver>,<ore:ingotNeodymium>,<ore:gemApatite>,<ore:gemEnderEye>,<ore:ingotYttrium>,<ore:ingotVanadium>,<ore:ingotUranium235>,<ore:ingotUranium>,<ore:ingotTungsten>,<ore:ingotTitanium>,

<ore:ingotTin>,<ore:ingotYttriumBariumCuprate>,<ore:ingotDamascusSteel>,<ore:ingotBlueSteel>,<ore:ingotRedSteel>,<ore:ingotBlackSteel>,<ore:ingotBismuthBronze>,<ore:ingotBlackBronze>,<ore:ingotRoseGold>,<ore:ingotSterlingSilver>,

<ore:ingotMolybdenum>,<ore:ingotManganese>,<ore:ingotMagnesium>,<ore:ingotLutetium>,<ore:ingotLithium>,<ore:ingotLead>,<ore:ingotLanthanum>,<ore:ingotIridium>,<ore:ingotIndium>,<ore:ingotHolmium>,

<ore:ingotGallium>,<ore:ingotGadolinium>,<ore:ingotEuropium>,<ore:ingotErbium>,<ore:ingotDysprosium>,<ore:ingotDuranium>,<ore:ingotTritanium>,<ore:ingotNaquadria>,<ore:ingotNaquadahEnriched>,<ore:ingotNaquadahAlloy>,

<ore:ingotNaquadah>,<ore:ingotHsss>,<ore:ingotHsse>,<ore:ingotHssg>,<ore:ingotVanadiumSteel>
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
print("BlocksFromIngots.zs loaded");