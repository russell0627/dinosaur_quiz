import 'package:flutter/material.dart';

class IncorrectAnswerDialog extends StatelessWidget {
  const IncorrectAnswerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text("Incorrect!"),
          Text("Try Again!"),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Close"),
        ),
      ],
    );
  }
}
