import '../models/animal.dart';
import '../models/plant.dart';

const Map<String, Plant> plants = {
  "spider plant": Plant(
    timesToWater: ["When soil is completely dry"],
    requiresPruning: true,
    propagationMethods: [
      PropagationMethod.rootInSoil,
      PropagationMethod.rootInWater,
    ],
    needsFertilizer: true,
    potType: PotType.hanging,
    sunRequirement: SunRequirement.partSun,
    description: "These plants grow long leaves that hang down and stems that have baby spider plants on them aka spiderettes",
    plantType: PlantType.perrenial,
    habitat: PlantHabitat.tropical,
    toxicTo: [],
    goodFor: [],
    name: "Spider Plant",
    rootStructure: RootStructure.monocot,
  )
};
