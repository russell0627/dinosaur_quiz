import 'package:dinosaur_quiz/utils/screen_utils.dart';
import 'package:dinosaur_quiz/widgets/dialogs/incorrect_answer_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dinosaur_quiz/models/question.dart';


class QuestionDisplay extends StatefulWidget {
  final Question question;
  final ValueChanged<bool> onComplete;

  const QuestionDisplay({Key? key, required this.question, required this.onComplete}) : super(key: key);

  @override
  State<QuestionDisplay> createState() => _QuestionDisplayState();
}

class _QuestionDisplayState extends State<QuestionDisplay> {
  bool answeredOnFirstTry = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.question.question,
          style: const TextStyle(fontSize: 16),
        ),
        boxM,
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final option in widget.question.options)
                    TextButton(
                      onPressed: () =>
                          widget.question.answer == option ? widget.onComplete(answeredOnFirstTry) : _onIncorrectAnswer(context),
                      child: Text(option.toString()),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onIncorrectAnswer(BuildContext context) {
    showDialog(context: context, builder: (_) => const IncorrectAnswerDialog());

    answeredOnFirstTry = false;
  }
}
