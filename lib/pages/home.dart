import 'package:dinosaur_quiz/pages/quiz_page.dart';
import 'package:dinosaur_quiz/pages/types_of_dinosaurs_page.dart';
import 'package:dinosaur_quiz/utils/screen_utils.dart';
import 'package:dinosaur_quiz/widgets/settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/dinosaurs.dart';

const imagePath = "assets/images/";
const buttonTextStyle = TextStyle(fontFamily:  "Merienda", fontSize: 18,);
bool dinosauceFont = true;

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dinosaur Quiz",
          style: TextStyle(fontFamily: "DinoSauce"),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              setState(() {
                showDialog(
                  context: context,
                  builder: (context) => const SettingsDialog(),
                );
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Transform.translate(
          offset: const Offset(0, -35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const QuizPage())),
                child: const Text(
                  "Start Dinosaur Quiz!",
                  style: buttonTextStyle,
                ),
              ),
              boxXXL,
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TypesOfDinosaursPage())),
                child: const Text(
                  "Groups of Dinosaurs",
                  style: buttonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dinosauceFontSetter(bool setTo) {
    setState(() {
      dinosauceFont = setTo;
    });
  }
}

List<Widget> testImages()  {
  List<Widget> images = [];
  for(int i = 0; i < dinosaurs.length; i++) {
    images.add(Image.asset("$imagePath${dinosaurs[i].imageFilename}"));
  }
  return images;
}
