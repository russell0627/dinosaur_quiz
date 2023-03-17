import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'credits_page.dart';
import 'quiz_length_page.dart';

//TODO: Create plant quiz and finish animal quiz.

const dinosaurImagePath = "assets/images/dinosaurs/";
const spaceImagePath = "assets/images/space";

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
        title: const Text("Quizzes"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const QuizLengthPage(maxQuizLength: 150, minQuizLength: 10)));
              },
              child: const Text("Go To Dinosaur Quiz", style: TextStyle(
                fontFamily: "erasaur",
              ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const QuizLengthPage(maxQuizLength: 5, minQuizLength: 5)));
              },
              child: const Text("Go To Space Quiz", style: TextStyle(
                fontFamily: "Andromeda",
                fontSize: 16,
              ),),
            ),
            const Spacer(),
            TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CreditsPage())),
              child: const Text(
                "Credits",
                style: TextStyle(
                  fontFamily: "Merienda"
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
