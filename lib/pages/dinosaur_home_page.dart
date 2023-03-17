import 'package:dinosaur_quiz/pages/quiz_length_page.dart';
import 'package:flutter/material.dart';

import '../utils/screen_utils.dart';
import '../widgets/dialogs/settings_dialog.dart';
import '../widgets/logo_display.dart';
import 'credits_page.dart';
import 'find_a_dinosaur.dart';
import 'home.dart';
import 'taxonomy_of_dinosaurs_page.dart';

const dinosaurButtonTextStyle = TextStyle(
  fontFamily: "erasaur",
  fontSize: 18,
);


class DinosaurHomePage extends StatefulWidget {
  const DinosaurHomePage({Key? key}) : super(key: key);

  @override
  State<DinosaurHomePage> createState() => _DinosaurHomePageState();
}

class _DinosaurHomePageState extends State<DinosaurHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoDisplay(
          imagePath: dinosaurImagePath,
          imageName: "parasaurolophus_icon.png",
          imagePadding: 8.0,
          fontFamily: "dinosauce",
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
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("${dinosaurImagePath}cretaceous_landscape.png"), fit: BoxFit.cover),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 150),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const QuizLengthPage(
                          minQuizLength: 10,
                          maxQuizLength: 150,
                        ))),
                    child: const Text(
                      "Start Dinosaur Quiz!",
                      style: dinosaurButtonTextStyle,
                    ),
                  ),
                  boxXXL,
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TypesOfDinosaursPage())),
                    child: const Text(
                      "Families of Dinosaurs",
                      style: dinosaurButtonTextStyle,
                    ),
                  ),
                  boxXXL,
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FindDinosaurPage())),
                    child: const Text(
                      "Find a Dinosaur",
                      style: dinosaurButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
