import 'package:dinosaur_quiz/pages/home.dart';
import 'package:dinosaur_quiz/utils/screen_utils.dart';
import 'package:dinosaur_quiz/widgets/dinosaur_display.dart';
import 'package:flutter/material.dart';

import '../models/dinosaur.dart';

class DinosaurDisplayPage extends StatefulWidget {
  final Dinosaur dinosaur;

  const DinosaurDisplayPage({Key? key, required this.dinosaur}) : super(key: key);

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
