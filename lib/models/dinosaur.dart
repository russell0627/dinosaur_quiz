import 'package:recase/recase.dart';

class Dinosaur {
  final String name;
  final Suborder suborder;
  final Diet diet;
  final TimePeriod timePeriod;
  final String imageFileName;

  const Dinosaur({
    required this.name,
    required this.suborder,
    required this.diet,
    required this.timePeriod,
    required this.imageFileName,
  });
}

enum Suborder {
  ankylosaur,
  ceratopsian,
  hadrosaur,
  ornithopod,
  pachycephalosaur,
  plateosaurid,
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
  cretaceous;

  @override
  String toString() => ReCase(name).titleCase;
}