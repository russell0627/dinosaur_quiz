import 'package:flutter/material.dart';

import '../data/dinosaurs.dart';
import '../models/dinosaur.dart';
import '../models/question.dart';
import '../utils/screen_utils.dart';
import '../widgets/game_finished_dialog.dart';
import '../widgets/question_display.dart';
import '../widgets/reset_game_dialog.dart';
import 'home.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = [];
  int score = 0;

  @override
  void initState() {
    super.initState();
    resetQuestions();
  }

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
              onPressed: () {
                setState(() {
                  showResetGameDialog(context, resetQuestions);
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Score: $score",
              style: const TextStyle(fontSize: 16),
            ),

            Padding(
              padding: paddingAllL,
              child: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: med,
                    color: Colors.brown[900]!,
                  ),
                ),
                child: Padding(
                  padding: paddingAllM,
                  child: Image.asset(questions.first.imageFilename ?? "${imagePath}triceratops.jpg"),
                ),
              ),
            ),

            Flexible(
              child: QuestionDisplay(
                question: questions.first,
                onCorrect: () {
                  setState(() {
                    if (questions.isEmpty) {
                      showDialog(context: context, builder: (_) => const GameFinishedDialog());
                    } else {
                      questions.remove(questions.first);
                      score++;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Question> _generateQuestions(Dinosaur currentDinosaur) {
    List<Question> newQuestions = [
      Question<Diet>(
        question: "What was the diet classification for ${currentDinosaur.name}?",
        options: Diet.values,
        answer: currentDinosaur.diet,
        imageFilename: "$imagePath${currentDinosaur.imageFilename}",
      ),
      Question<Group>(
        question: "What is the taxonomic group for ${currentDinosaur.name}?",
        options: Group.values,
        answer: currentDinosaur.group,
        imageFilename: "$imagePath${currentDinosaur.imageFilename}",
      ),
      Question(
        question: "What time period was ${currentDinosaur.name} from?",
        options: TimePeriod.values,
        answer: currentDinosaur.timePeriod,
        imageFilename: "$imagePath${currentDinosaur.imageFilename}",
      )
    ];

    return newQuestions;
  }

  void resetQuestions() {
    setState(() {
      for (int i = 0; i < dinosaurs.length; i++) {
        questions.addAll(_generateQuestions(dinosaurs[i]));
      }
      questions.shuffle();
      score = 0;
    });
    print(dinosaurs.length);
  }
}
