import '../models/animal.dart';
import '../models/dinosaur.dart';

const Map<String, Animal> animals = {
  "alligator" : Animal(name: "Alligator", category: AnimalCategory.reptile, diet: Diet.carnivore, habitats: [AnimalHabitat.river, AnimalHabitat.swamp], waterTypes: [WaterType.fresh, WaterType.salt]),
  "anaconda" : Animal(name: "Anaconda", category: AnimalCategory.reptile, diet: Diet.carnivore, habitats: [AnimalHabitat.jungle]),
  "alpaca" : Animal(name: "Alpaca", category: AnimalCategory.mammal, diet: Diet.herbivore, habitats: [AnimalHabitat.mountains,]),
  "crocodile" : Animal(name: "Crocodile", category: AnimalCategory.reptile, diet: Diet.carnivore, habitats: [AnimalHabitat.swamp, AnimalHabitat.marsh, AnimalHabitat.lake]),
  "house cat" : Animal(name: "House cat", category: AnimalCategory.mammal, diet: Diet.carnivore, habitats: [AnimalHabitat.humanHouse]),
};