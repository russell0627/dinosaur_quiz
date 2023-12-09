import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/question.dart';
import '../utils/screen_utils.dart';
import 'credits_page.dart';
import 'dinosaur/dinosaur_home_page.dart';
import 'quiz_length_page.dart';
import 'quiz_page.dart';

//TODO: Create plant quiz and finish animal quiz.

const dinosaurImagePath = "assets/images/dinosaurs/";
const spaceImagePath = "assets/images/space/";

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
            const SizedBox(height: 150,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const DinosaurHomePage()));
              },
              child: const Text("Go To Dinosaur Quiz", style: TextStyle(
                fontFamily: "erasaur",
              ),),
            ),
            boxXXL,
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const QuizLengthPage(maxQuizLength: 7, minQuizLength: 3, questionType: QuestionType.space,)));
              },
              child: const Text("Go To Space Quiz", style: TextStyle(
                fontFamily: "Andromeda",
                fontSize: 22,
              ),),
            ),
           boxXXL,
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const QuizLengthPage(maxQuizLength: 20, minQuizLength: 3, questionType: QuestionType.animal,)));
              },
              child: const Text("Go To Animal Quiz", style: TextStyle(
                fontFamily: "Andromeda",
                fontSize: 22,
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
