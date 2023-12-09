import 'package:flutter/material.dart';

import '../models/animal.dart';

class AnimalDisplay extends StatelessWidget {
  final Animal animal;

  const AnimalDisplay({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(animal.name, style: const TextStyle(fontSize: 18),),
        Text(animal.category.name),
        Text(animal.diet.name),
        for(int i = 0; i < animal.habitats.length; i++)
          Text(animal.habitats[i].name),
        const Text("Safe Water"),
        for (int i = 0; i < animal.waterTypes.length; i++)
          Text("${animal.waterTypes[i].name} water")
      ],
    );
  }
}
