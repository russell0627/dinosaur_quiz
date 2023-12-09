import 'animal.dart';

class Plant {
  final String name;
  final String description;
  final List<String> timesToWater;
  final bool requiresPruning;
  final PlantType plantType;
  final PlantHabitat habitat;
  final List<Animal> toxicTo;
  final List<Animal> goodFor;
  final RootStructure rootStructure;
  final PotType potType;
  final SunRequirement sunRequirement;
  final bool needsFertilizer;
  final List<PropagationMethod> propagationMethods;

  const Plant({
    required this.timesToWater,
    required this.requiresPruning,
    required this.propagationMethods,
    required this.needsFertilizer,
    required this.potType,
    required this.sunRequirement,
    required this.description,
    required this.plantType,
    required this.habitat,
    required this.toxicTo,
    required this.goodFor,
    required this.name,
    required this.rootStructure,
  });

  @override
  String toString() {
    return name;
  }
}

enum RootStructure {
  monocot,
  dicot,
}

enum PropagationMethod {
  fromSeed,
  rootInWater,
  rootInSoil,
}

enum PlantType {
  tree,
  shrub,
  flower,
  perrenial,
  grass,
}

enum PlantHabitat {
  desert,
  tropical,
  aquatic,
  temperate,
}

enum PotType {
  hanging,
  sitting,
}

enum LocationRequirement {
  inside,
  outside,
  any,
}

enum SunRequirement {
  fullSun,
  partSun,
  partShade,
  fullShade,
  denseShade;
}

const Map<SunRequirement, String> sunRequirementDescriptions = {
  SunRequirement.fullSun: "Plant needs at least 6 hours of direct sunlight daily.",
  SunRequirement.fullShade: "Plant needs less 3 hours of direct sunlight daily.",
  SunRequirement.partSun: "Plants require between 3 and 6 hours of direct sun per day.",
  SunRequirement.partShade:
      "Plants require between 3 and 6 hours of direct sun per day but require shade from intense mid-day sun.",
  SunRequirement.denseShade: "No direct sunlight and little indirect light reaches the ground.",
};
