import 'package:flutter/material.dart';

import '../data/animals.dart';
import '../data/dinosaurs.dart';
import '../models/animal.dart';
import '../models/dinosaur.dart';
import '../models/plant.dart';
import '../models/question.dart';
import '../models/space_object.dart';
import '../utils/screen_utils.dart';
import '../widgets/dialogs/game_finished_dialog.dart';
import '../widgets/dialogs/reset_game_dialog.dart';
import '../widgets/logo_display.dart';
import '../widgets/question_display.dart';
import 'home.dart';

//168 Different Questions, 3 per Dinosaur.
const animalImagePath = "assets/images/animals/";

class QuizPage extends StatefulWidget {
  final QuestionType questionType;
  final int quizLength;

  const QuizPage({super.key, required this.quizLength, required this.questionType});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> _questions = [];
  int _score = 0;
  int _questionIndex = 0;
  bool _gameEndDialogShown = false;

  bool get isQuizCompleted => _questionIndex >= _questions.length;

  String get imagePath => widget.questionType == QuestionType.dinosaur ? dinosaurImagePath : spaceImagePath;

  @override
  void initState() {
    super.initState();
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
          text: widget.questionType == QuestionType.dinosaur ? ["Dinosaur", "Quiz"] : ["Space", "Quiz"],
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

      //
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  '$imagePath${widget.questionType == QuestionType.dinosaur ? "herd_of_plesiosaurs.png" : "blue_and_purple_planet.png"}'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Score: $_score",
                style: const TextStyle(fontSize: 16, fontFamily: "erasaur"),
              ),
              if (!isQuizCompleted) ...[
                Text(
                  "Question: ${_questionIndex + 1}/${widget.quizLength}",
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
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                            _questions[_questionIndex].imageFilename ?? "${dinosaurImagePath}triceratops.jpg"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: QuestionDisplay(
                    key: ObjectKey(_questions[_questionIndex]),
                    question: _questions[_questionIndex],
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

  List<Question> _generateQuestions(
      {Dinosaur? currentDinosaur, Animal? currentAnimal, Plant? currentPlant, required QuestionType questionType}) {
    //TODO: make it so that this supports plant questions too
    List<Question> newQuestions = [];

    if (questionType == QuestionType.dinosaur) {
      newQuestions = [
        Question<Diet>(
          question: "What was the diet classification for ${currentDinosaur!.name}?",
          options: Diet.values,
          answers: [currentDinosaur.diet],
          imageFilename: "$dinosaurImagePath${currentDinosaur.imageFileName}",
        ),
        Question<Suborder>(
          question: "What is the lowest clade for ${currentDinosaur.name}?",
          options: Suborder.values,
          answers: [currentDinosaur.suborder],
          imageFilename: "$dinosaurImagePath${currentDinosaur.imageFileName}",
        ),
        Question<TimePeriod>(
          question: "What time period was ${currentDinosaur.name} from?",
          options: TimePeriod.values,
          answers: [currentDinosaur.timePeriod],
          imageFilename: "$dinosaurImagePath${currentDinosaur.imageFileName}",
        ),
      ];
    } else if (questionType == QuestionType.space) {
      newQuestions = [
        Question(
          question: "What is the hottest type of star?",
          options: StarColor.values.map((color) => color.toString()).toList(),
          answers: [StarColor.blue.toString()],
        ),
        Question(
          question: "What is the coldest type of star?",
          options: StarColor.values.map((color) => color.toString()).toList(),
          answers: [StarColor.red.toString()],
        ),
        Question(
            question: "What type of galaxy is the Milky Way?",
            options: GalaxyType.values.map((type) => type.toString()).toList(),
            answers: [GalaxyType.spiral.toString()],
            imageFilename: "${spaceImagePath}milky_way.png"),
        Question(question: "How far is the Sun from Earth?", options: auFormatter([1, 10, 15, 100]), answers: ["1 AU"]),
        const Question(
            question: "What is the biggest dwarf planet in the solar system?",
            options: ["Eris", "MakeMake", "Pluto"],
            answers: ["Eris"]),
        Question(question: "How many miles are in 1 AU", options: [
          86000000,
          113000000,
          auToMiles(1),
        ], answers: [
          auToMiles(1)
        ]),
        const Question(
          question: "What is at the center of the Milky Way Galaxy",
          options: ["A Star", "Beans", "Black Hole", "Your Mother"],
          answers: ["Black Hole"],
        ),
        const Question(question: "How are black holes made", options: ["Dead Stars", "Dead Galaxies", "Dead Planets", "Divine Power"], answers: ["Dead Stars"]),
      ];
    } else if (questionType == QuestionType.animal) {
      newQuestions = [
        Question<String>(
          question: "What is the diet classification for ${currentAnimal!.name}?",
          options: Diet.values.map((diet) => diet.toString()).toList(),
          answers: [currentAnimal.diet.toString()],
          imageFilename: "$animalImagePath${currentAnimal.imageFileName}",
        ),
        Question<String>(
          question: "What is the category of animal for ${currentAnimal.name}?",
          options: AnimalCategory.values.map((category) => category.toString()).toList(),
          answers: [currentAnimal.category.toString()],
          imageFilename: "$animalImagePath${currentAnimal.imageFileName}",
        ),
        Question(
          question: "Where does ${currentAnimal.name} live?",
          options: AnimalHabitat.values.map((habitat) => habitat.toString()).toList(),
          answers: currentAnimal.habitats.map((habitat) => habitat.toString()).toList(),
          imageFilename: "$animalImagePath${currentAnimal.imageFileName}",
        )
      ];
    }
    return newQuestions;
  }

  void resetQuestions() {
    final List<Question> newQuestions = [];
    _questionIndex = 0;

    switch (widget.questionType) {
      case QuestionType.dinosaur:
        for (int i = 0; i < dinosaurs.values.length; i++) {
          newQuestions.addAll(
              _generateQuestions(currentDinosaur: dinosaurs.values.toList()[i], questionType: QuestionType.dinosaur));
        }
        newQuestions.shuffle();
        _score = 0;
        newQuestions.add(
          const Question(
              question: "Was Albertaceratops found in:",
              options: ["Alberta, Canada", "Egypt", "India"],
              answers: ["Alberta, Canada"],
              imageFilename: "${dinosaurImagePath}albertaceratops.jpg"),
        );
        newQuestions.add(
          const Question(
              question: "How many species did Triceratops have?",
              options: ["2", "3", "4", "5",],
              answers: ["2"],
              imageFilename: "${dinosaurImagePath}albertaceratops.jpg"),
        );
        setState(() {});
        break;
      case QuestionType.space:
        newQuestions.addAll(_generateQuestions(questionType: QuestionType.space));
        break;
      case QuestionType.animal:
        for (int i = 0; i < animals.values.length; i++) {
          newQuestions
              .addAll(_generateQuestions(currentAnimal: animals.values.toList()[i], questionType: QuestionType.animal));
        }
        break;
      case QuestionType.plant:
        break;
    }
    _questions = newQuestions.take(widget.quizLength).toList();
  }

  Future<void> nextQuestion(bool answeredOnFirstTry) async {
    setState(() {
      if (answeredOnFirstTry) {
        _score++;
      }

      _questionIndex++;
    });

    if (isQuizCompleted) {
      await showDialog(
        context: context,
        builder: (_) => GameFinishedDialog(
          score: _score,
          numberOfQuestions: widget.quizLength,
        ),
        barrierDismissible: false,
      );

      resetQuestions();

      answeredOnFirstTry = true;
    }
  }
}
