import 'package:flutter/material.dart';

class InvalidQuizLengthDialog extends StatelessWidget {
  const InvalidQuizLengthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SimpleDialog(children: [
      Text("You have chosen an invalid quiz length!"),
      Text("Please try again."),
    ]);
  }
}
