import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../models/dinosaur.dart';
import '../pages/home.dart';
import '../utils/screen_utils.dart';

const TextStyle _defaultTextStyle = TextStyle();

class DinosaurDisplay extends StatelessWidget {
  final Dinosaur dinosaur;
  final TextStyle infoTextStyle;

  const DinosaurDisplay({Key? key, required this.dinosaur, this.infoTextStyle = _defaultTextStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: paddingAllL,
          child: DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
              border: Border.all(
                width: med,
                color: const Color(0xFF452C09),
              ),
            ),
            child: Padding(
              padding: paddingAllM,
              child: Image.asset("$dinosaurImagePath${dinosaur.imageFileName}"),
            ),
          ),
        ),
        Text(
          dinosaur.name.titleCase,
          style: infoTextStyle,
        ),
        Text(
          "Diet: ${dinosaur.diet.name.titleCase}",
          style: infoTextStyle,
        ),
        Text(
          "Family: ${dinosaur.group.name.titleCase}",
          style: infoTextStyle,
        ),
        Text(
          "Time Period: ${dinosaur.timePeriod.name.titleCase}",
          style: infoTextStyle,
        ),
      ],
    );
  }
}
