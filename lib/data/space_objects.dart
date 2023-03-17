import '../models/space_object.dart';

const Map<String, Galaxy> galaxies = {
  "milky way": Galaxy(name: "Milky Way", galaxyType: GalaxyType.spiral, arms: {
    "orion": GalaxyArm(
      name: "Orion Arm",
      objects: {
        "home": SolarSystem(
          name: "Home System",
          planets: {
            "mercury": Planet(name: "Mercury"),
            "venus": Planet(name: "Venus"),
            "earth": Planet(name: "Earth"),
            "mars": Planet(name: "Mars"),
            "asteroid belt": AsteroidBelt(name: "Asteroid Belt"),
            "jupiter": Planet(name: "Jupiter"),
            "saturn": Planet(name: "Saturn"),
            "uranus": Planet(name: "Uranus"),
            "neptune": Planet(name: "Neptune"),
            "kuiper belt": AsteroidBelt(name: "Kuiper Belt"),
          },
        ),
      },
    ),
    "sagittarius": GalaxyArm(name: "Sagittarius Arm", objects: {}),
  })
};
