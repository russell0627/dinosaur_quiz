import 'package:flutter/material.dart';

import '../../models/dinosaur.dart';
import '../../utils/screen_utils.dart';
import '../../widgets/dinosaur_display.dart';
import '../home.dart';

class DinosaurDisplayPage extends StatefulWidget {
  final Dinosaur dinosaur;

  const DinosaurDisplayPage({super.key, required this.dinosaur});

  @override
  State<DinosaurDisplayPage> createState() => _DinosaurDisplayPageState();
}

class _DinosaurDisplayPageState extends State<DinosaurDisplayPage> {
  static const TextStyle infoTextStyle = TextStyle(fontFamily: "merienda");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.dinosaur.name,
          style: const TextStyle(fontFamily: "erasaur"),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("${dinosaurImagePath}tyrannosaurus_fight.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: paddingAllM,
                  decoration: const BoxDecoration(
                    color: Colors.black38,
                  ),
                  child: DinosaurDisplay(
                    dinosaur: widget.dinosaur,
                    infoTextStyle: infoTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
