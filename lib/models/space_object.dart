//TODO: Add JWST questions.

import 'package:recase/recase.dart';

class CelestialObject {
  final String name;
  final int? auFromEarth;

  const CelestialObject({required this.name, this.auFromEarth});
}

class SolarSystem extends CelestialObject {
  static SpaceCategory category = SpaceCategory.solarSystem;

  final Map<String, CelestialObject> planets;

  const SolarSystem({required super.name, required this.planets, super.auFromEarth});
}

class Planet extends CelestialObject {
  static SpaceCategory category = SpaceCategory.planet;

  const Planet({required super.name, super.auFromEarth});
}

class DwarfPlanet extends CelestialObject {
  static SpaceCategory category = SpaceCategory.dwarfPlanet;

  const DwarfPlanet({required super.name, super.auFromEarth});
}

class AsteroidBelt extends CelestialObject {
  static SpaceCategory category = SpaceCategory.asteroidBelt;

  const AsteroidBelt({required super.name, super.auFromEarth});
}

class Galaxy extends CelestialObject {
  static SpaceCategory category = SpaceCategory.galaxy;

  final GalaxyType galaxyType;
  final Map<String, GalaxyArm>? arms;

  bool get hasArms => arms == null;

  const Galaxy({required super.name, required this.galaxyType, this.arms, super.auFromEarth});
}

class GalaxyArm extends CelestialObject {
  final Map<String, CelestialObject> objects;

  const GalaxyArm({required super.name, super.auFromEarth, required this.objects});
}

enum SpaceCategory {
  galaxy,
  solarSystem,
  star,
  planet,
  dwarfPlanet,
  asteroidBelt,
}

enum StarColor {
  blue,
  red,
  white,
  yellow;

  @override
  String toString() => name.titleCase;

}

enum GalaxyType {
  irregular,
  spiral,
  ring;

  @override
  String toString() => name.titleCase;
}

// AU stands for "Astronomical Unit/s"
List<String> auFormatter(List<int> au) {
  List<String> newAU = [];

  for (int i = 0; i < au.length; i++) {
    newAU.add("${au[i]} AU");
  }
  return newAU;
}

int auToMiles(int au) => 93000000 * au;
