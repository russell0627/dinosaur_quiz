import '../models/animal.dart';
import '../models/dinosaur.dart';

const Map<String, Animal> animals = {
  "Alligator" : Animal("Alligator", AnimalCategory.reptile, Diet.carnivore, [AnimalHabitat.river]),
  "Anaconda" : Animal("Anaconda", AnimalCategory.reptile, Diet.carnivore, [AnimalHabitat.river]),
};