import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(fontFamily: "erasaur");

class GameFinishedDialog extends StatelessWidget {
  final int score;
  final int numberOfQuestions;

  const GameFinishedDialog({Key? key, required this.score, required this.numberOfQuestions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("You Finished The Game!", style: _textStyle),
              Text("You got $score out of $numberOfQuestions correct!", style: _textStyle),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Reset Game", style: _textStyle,))
            ],
          ),
        ),
      ],
    );
  }
}
