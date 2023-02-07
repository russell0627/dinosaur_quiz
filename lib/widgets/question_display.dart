import 'package:dinosaur_quiz/widgets/incorrect_answer_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dinosaur_quiz/models/question.dart';

class QuestionDisplay extends StatelessWidget {
  final Question question;
  final VoidCallback onCorrect;

  const QuestionDisplay({Key? key, required this.question, required this.onCorrect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(question.question),
          for (final option in question.options)
            TextButton(
              onPressed: () => question.answer == option ? onCorrect() : _onIncorrectAnswer(context),
              child: Text(option.toString()),
            ),
        ],
      ),
    );
  }

  void _onIncorrectAnswer(BuildContext context) {
    showDialog(context: context, builder: (_) => const IncorrectAnswerDialog());
  }
}
