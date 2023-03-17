import 'dinosaur.dart';

class Animal {
  final String name;
  final AnimalCategory category;
  final Diet diet;
  final List<AnimalHabitat> habitat;

  const Animal(this.name, this.category, this.diet, this.habitat);
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
  grassland,
  desert,
  river,
  ocean,
}