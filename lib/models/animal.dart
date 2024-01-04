import 'dinosaur.dart';

class Animal {
  final String name;
  final AnimalCategory category;
  final Diet diet;
  final List<AnimalHabitat> habitats;
  final List<WaterType> waterTypes;
  final String imageFileName;

  const Animal({required this.name, required this.category, required this.diet, required this.habitats, this.waterTypes = const [], this.imageFileName = "", });
}

enum AnimalCategory {
  mammal,
  bird,
  fish,
  reptile,
  amphibian,
  arachnid,
  insect;

  @override
  String toString() => name;
}

enum AnimalHabitat {
  forest,
  jungle,
  mountains,
  marsh,
  lake,
  grassland,
  desert,
  river,
  ocean,
  swamp,
  tundra,
  cave,
  undergroundWater,
  humanHouse;

  @override
  String toString() => name;
}

enum WaterType {
  fresh,
  salt
}