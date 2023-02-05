import 'dart:math';

import 'package:flutter/material.dart';

import '../models/question.dart';
import '../pages/home.dart';

final rng = Random();
late Function resetGameFunction;
const double alertSpacerHeight = 30;

const List<Question> questions = [
  Question("Was Triceratops an Herbivore", Answer.yes),
  Question("Was Triceratops a Ceratopsian", Answer.yes),
  Question("Was Allosaurus a Theropod", Answer.yes),
  Question("Was Ankylosaurus a Stegosaur", Answer.no),
  Question("Was Ankylosaurus an Ankylosaur", Answer.yes),
  Question("Was Ankylosaurus an Herbivore", Answer.yes),
  Question("Was Albertaceratops named because it was found in Alberta, Canada ", Answer.yes),
  Question("Was Allosaurus a Carnivore", Answer.yes),
  Question("Was Apatosaurus a Theropod", Answer.no),
  Question("Was Apatosaurus a Sauropod", Answer.yes),
  Question("Was Pteranodon a Theropod", Answer.no),
  Question("Was Pteranodon a Pterosaur", Answer.yes),
  Question("Were Utahraptor and Velociraptor part of the same group of dinosaur", Answer.yes),
  Question("Was Velociraptor a Theropod", Answer.yes),
  Question("Was Pachycephalosaurus a Theropod", Answer.no),
  Question("Was Pachycephalosaurus a Pachycephalosaur", Answer.no),
];

List<Question> _unusedQuestions = questions.toList();

Question _getQuestion() {
  Question newQuestion = _unusedQuestions[rng.nextInt(_unusedQuestions.length - 1).abs()];
  return newQuestion;
}

Question resetQuestion() {
  _unusedQuestions.remove(currentQuestion);
  _unusedQuestions.shuffle();
  return _getQuestion();
}

void resetQuestions() {
  _unusedQuestions = questions.toList();
  currentQuestion = questions[0];
}

bool unusedQuestionsEmpty() => _unusedQuestions.isEmpty ? true : false;

class ResetGameDialog extends StatefulWidget {
  const ResetGameDialog({Key? key}) : super(key: key);

  @override
  State<ResetGameDialog> createState() => _ResetGameDialogState();
}

class _ResetGameDialogState extends State<ResetGameDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Do you want to reset your Game?"),
      actions: [
        Column(
          children: [
            SizedBox(
              height: 1,
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: alertSpacerHeight,
                  width: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        resetGameFunction();
                        Navigator.of(context).pop();
                      },
                      child: const Text("Yes")),
                ),
                SizedBox(
                  height: alertSpacerHeight,
                  width: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("No")),
                ),
                SizedBox(
                  height: alertSpacerHeight,
                  width: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1,
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void showResetGameDialog(BuildContext context, Function resetFunction) {
  resetGameFunction = resetFunction;
  showDialog(context: context, builder: (context) => const ResetGameDialog());
}
