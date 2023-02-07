import 'package:flutter/material.dart';

class GameFinishedDialog extends StatelessWidget {
  const GameFinishedDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: Center(child: Column(
      children: const [
        Text("You Finished The Game!"),
        Text("Use the refresh button to replay the game")
      ],
    )),);
  }
}
