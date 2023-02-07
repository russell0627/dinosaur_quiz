import 'package:recase/recase.dart';

class Dinosaur {
  final String name;
  final Group group;
  final Diet diet;
  final TimePeriod timePeriod;
  final String imageFilename;

  const Dinosaur({
    required this.name,
    required this.group,
    required this.diet,
    required this.timePeriod,
    required this.imageFilename,
  });
}

enum Group {
  ankylosaur,
  ceratopsian,
  hadrosaur,
  pachycephalosaur,
  pterosaur,
  sauropod,
  stegosaur,
  theropod;

  @override
  String toString() => ReCase(name).titleCase;
}

enum Diet {
  carnivore,
  herbivore,
  omnivore;

  @override
  String toString() => ReCase(name).titleCase;
}

enum TimePeriod {
  jurassic,
  triassic,
  cretaceous
}