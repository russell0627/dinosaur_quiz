import 'package:flutter/material.dart';

import '../data/dinosaurs.dart';
import '../models/dinosaur.dart';
import '../models/question.dart';
import '../models/space_object.dart';
import '../utils/screen_utils.dart';
import '../widgets/dialogs/game_finished_dialog.dart';
import '../widgets/dialogs/question_display.dart';
import '../widgets/dialogs/reset_game_dialog.dart';
import '../widgets/logo_display.dart';
import 'home.dart';

//168 Different Questions, 3 per Dinosaur.

class QuizPage extends StatefulWidget {
  final QuestionType questionType;
  final int quizLength;

  const QuizPage({Key? key, required this.quizLength, required this.questionType}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = [];
  int score = 0;
  int questionIndex = 0;
  String imagePath = "";
  bool gameEndDialogShown = false;

  bool get isQuizCompleted => questionIndex >= questions.length;

  String get getImagePath => widget.questionType == QuestionType.dinosaur ? dinosaurImagePath : spaceImagePath;

  @override
  void initState() {
    super.initState();
    imagePath = getImagePath;
    resetQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoDisplay(
          imagePath: imagePath,
          imageName: widget.questionType == QuestionType.dinosaur ? "parasaurolophus_icon.png" : "galaxy_icon.png",
          imagePadding: med,
          fontFamily: widget.questionType == QuestionType.dinosaur ? "dinosauce" : "Induction",
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
        decoration: BoxDecoration(
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
                      child:
                          Image.asset(questions[questionIndex].imageFilename ?? "${dinosaurImagePath}triceratops.jpg"),
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

  List<Question> _generateQuestions({Dinosaur? currentDinosaur, required QuestionType questionType}) {
    //TODO: make it so that this supports space questions too
    List<Question> newQuestions = [];

    if (questionType == QuestionType.dinosaur) {
      newQuestions = [
        const Question(
            question: "Was Albertaceratops found in:",
            options: ["Alberta, Canada", "Egypt", "India"],
            answer: "Alberta, Canada"),
        Question<Diet>(
          question: "What was the diet classification for ${currentDinosaur!.name}?",
          options: Diet.values,
          answer: currentDinosaur.diet,
          imageFilename: "$dinosaurImagePath${currentDinosaur.imageFilename}",
        ),
        Question<Group>(
          question: "What is the taxonomic family for ${currentDinosaur.name}?",
          options: Group.values,
          answer: currentDinosaur.group,
          imageFilename: "$dinosaurImagePath${currentDinosaur.imageFilename}",
        ),
        Question(
          question: "What time period was ${currentDinosaur.name} from?",
          options: TimePeriod.values,
          answer: currentDinosaur.timePeriod,
          imageFilename: "$dinosaurImagePath${currentDinosaur.imageFilename}",
        )
      ];
    } else {
      newQuestions = [
        const Question(
          question: "What is the hottest type of star?",
          options: StarColor.values,
          answer: StarColor.blue,
        ),
        const Question(
          question: "What is the coldest type of star?",
          options: StarColor.values,
          answer: StarColor.red,
        ),
        const Question(
            question: "What type of galaxy is the Milky Way?",
            options: GalaxyType.values,
            answer: GalaxyType.spiral,
            imageFilename: "milky_way.png"),
        Question(question: "How far is the Sun from Earth?", options: auFormatter([1, 10, 15, 100]), answer: "1 AU"),
        const Question(
            question: "What is the biggest dwarf planet in the solar system?",
            options: ["Eris", "MakeMake", "Pluto"],
            answer: "Eris"),
        Question(
            question: "How many miles are in 1 AU",
            options: [
              86000000,
              113000000,
              auToMiles(1),
            ],
            answer: auToMiles(1))
      ];
    }
    return newQuestions;
  }

  void resetQuestions() {
    final List<Question> newQuestions = [];
    questionIndex = 0;

    for (int i = 0; i < dinosaurs.values.length; i++) {
      newQuestions.addAll(
          _generateQuestions(currentDinosaur: dinosaurs.values.toList()[i], questionType: QuestionType.dinosaur));
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
