import 'package:dinosaur_quiz/pages/quiz_length_page.dart';
import 'package:dinosaur_quiz/pages/taxonomy_of_dinosaurs_page.dart';
import 'package:dinosaur_quiz/utils/screen_utils.dart';
import 'package:dinosaur_quiz/widgets/logo_display.dart';
import 'package:dinosaur_quiz/widgets/dialogs/settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'credits_page.dart';

const imagePath = "assets/images/";
const buttonTextStyle = TextStyle(
  fontFamily: "erasaur",
  fontSize: 18,
);

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
        title: const LogoDisplay(
          imagePath: imagePath,
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
          image: DecorationImage(image: AssetImage("${imagePath}cretaceous_landscape.png"), fit: BoxFit.cover),
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
                      style: buttonTextStyle,
                    ),
                  ),
                  boxXXL,
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TypesOfDinosaursPage())),
                    child: const Text(
                      "Families of Dinosaurs",
                      style: buttonTextStyle,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CreditsPage())),
                    child: const Text(
                      "Credits",
                      style: buttonTextStyle,
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
