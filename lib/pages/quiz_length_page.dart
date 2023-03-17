import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/question.dart';
import '../utils/screen_utils.dart';
import '../widgets/dialogs/invalid_quiz_length_dialog.dart';
import 'home.dart';
import 'quiz_page.dart';

class QuizLengthPage extends StatefulWidget {
  final int maxQuizLength;
  final int minQuizLength;
  final QuestionType questionType;

  const QuizLengthPage(
      {Key? key, required this.maxQuizLength, required this.minQuizLength, this.questionType = QuestionType.dinosaur})
      : super(key: key);

  @override
  State<QuizLengthPage> createState() => _QuizLengthPageState();
}

class _QuizLengthPageState extends State<QuizLengthPage> {
  int quizLength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Length",
          style: TextStyle(
            fontFamily: "erasaur",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.questionType == QuestionType.dinosaur
                  ? "${dinosaurImagePath}triceratops_in_a_forest.png"
                  : "${spaceImagePath}blue_and_purple_planet.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    onChanged: (value) {
                      quizLength = int.tryParse(value) ?? 0;
                    },
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                      label: Text(
                        "Choose A Quiz Length",
                        style: TextStyle(fontFamily: "Merienda"),
                      ),
                    ),
                  ),
                ),
                Text(
                  "MIN: ${widget.minQuizLength}, MAX: ${widget.maxQuizLength}",
                  style: const TextStyle(fontFamily: "Merienda"),
                ),
                boxXXL,
                ElevatedButton(
                  onPressed: () {
                    if (quizLength > widget.maxQuizLength || quizLength < widget.minQuizLength) {
                      showDialog(context: context, builder: (_) => const InvalidQuizLengthDialog());
                      return;
                    }
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => QuizPage(
                              quizLength: quizLength,
                              questionType: widget.questionType,
                            )));
                  },
                  child: const Text(
                    "Start Quiz",
                    style: TextStyle(fontFamily: "erasaur"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
