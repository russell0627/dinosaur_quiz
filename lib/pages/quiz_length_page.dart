import 'package:dinosaur_quiz/pages/home.dart';
import 'package:dinosaur_quiz/pages/quiz_page.dart';
import 'package:dinosaur_quiz/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/dialogs/invalid_quiz_length_dialog.dart';

class QuizLengthPage extends StatefulWidget {
  final int maxQuizLength;
  final int minQuizLength;

  const QuizLengthPage({Key? key, required this.maxQuizLength, required this.minQuizLength}) : super(key: key);

  @override
  State<QuizLengthPage> createState() => _QuizLengthPageState();
}

class _QuizLengthPageState extends State<QuizLengthPage> {
  int quizLength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Length", style: TextStyle(
          fontFamily: "erasaur",
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("${imagePath}triceratops_in_a_forest.png"),
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
                      quizLength = int.tryParse(value)!;
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => QuizPage(quizLength: quizLength)));
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
