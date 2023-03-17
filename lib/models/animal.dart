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
  insect,
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
}

enum WaterType {
  fresh,
  salt
}