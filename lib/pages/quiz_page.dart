import 'package:dinosaur_quiz/widgets/logo_display.dart';
import 'package:flutter/material.dart';

import '../data/dinosaurs.dart';
import '../models/dinosaur.dart';
import '../models/question.dart';
import '../utils/screen_utils.dart';
import '../widgets/dialogs/game_finished_dialog.dart';
import '../widgets/dialogs/question_display.dart';
import '../widgets/dialogs/reset_game_dialog.dart';
import 'home.dart';

//168 Different Questions, 3 per Dinosaur.

class QuizPage extends StatefulWidget {
  final int quizLength;

  const QuizPage({Key? key, required this.quizLength}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = [];
  int score = 0;
  int questionIndex = 0;
  bool gameEndDialogShown = false;

  bool get isQuizCompleted => questionIndex >= questions.length;

  @override
  void initState() {
    super.initState();
    resetQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoDisplay(
          imagePath: imagePath,
          imageName: "parasaurolophus_icon.png",
          imagePadding: med,
          fontFamily: "dinosauce",
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() async {
                  final reset = await showResetGameDialog(context);
                  if (reset) {
                    resetQuestions();
                  }
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("${imagePath}herd_of_plesiosaurs.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Score: $score",
                style: const TextStyle(fontSize: 16, fontFamily: "erasaur"),
              ),
              if (!isQuizCompleted) ...[
                Text(
                  "Question: ${questionIndex + 1}/${widget.quizLength}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Merienda",
                  ),
                ),
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
                      child: Image.asset(questions[questionIndex].imageFilename ?? "${imagePath}triceratops.jpg"),
                    ),
                  ),
                ),
                Flexible(
                  child: QuestionDisplay(
                    key: ObjectKey(questions[questionIndex]),
                    question: questions[questionIndex],
                    onComplete: (answeredOnFirstTry) {
                      nextQuestion(answeredOnFirstTry);
                    },
                  ),
                ),
              ],
            ],
          ),
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
        question: "What is the taxonomic family for ${currentDinosaur.name}?",
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
    final List<Question> newQuestions = [];
    questionIndex = 0;

    for (int i = 0; i < dinosaurs.values.length; i++) {
      newQuestions.addAll(_generateQuestions(dinosaurs.values.toList()[i]));
    }
    newQuestions.shuffle();
    score = 0;
    questions = newQuestions.take(widget.quizLength).toList();
    setState(() {});
  }

  Future<void> nextQuestion(bool answeredOnFirstTry) async {
    setState(() {
      if (answeredOnFirstTry) {
        score++;
      }

      questionIndex++;
    });

    if (isQuizCompleted) {
      await showDialog(
        context: context,
        builder: (_) => GameFinishedDialog(
          score: score,
          numberOfQuestions: widget.quizLength,
        ),
        barrierDismissible: false,
      );

      resetQuestions();

      answeredOnFirstTry = true;
    }
  }
}
