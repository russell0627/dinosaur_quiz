import 'package:dinosaur_quiz/models/dinosaur.dart';
import 'package:dinosaur_quiz/widgets/game_finished_dialog.dart';
import 'package:dinosaur_quiz/widgets/question_display.dart';
import 'package:dinosaur_quiz/widgets/reset_game_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/dinosaurs.dart';
import '../models/question.dart';
import '../widgets/settings_dialog.dart';

const imagePath = "assets/images/";

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(context: context, builder: (context) => const SettingsDialog());
            },
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  showResetGameDialog(context, resetQuestions);
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Column(
        children: [
          Text("Score: $score"),
          Image.asset(questions[0].imageFilename ?? "${imagePath}triceratops.jpg"),
          QuestionDisplay(
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
        ],
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
  }
}

enum OutcomeText {
  correct,
  incorrect,
  selectAnAnswer,
}
