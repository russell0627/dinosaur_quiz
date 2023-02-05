import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../models/question.dart';
import 'package:dinosaur_quiz/data/questions.dart';

import '../widgets/settings_dialog.dart';

Question currentQuestion = questions[0];
Answer userAnswer = Answer.none;
bool userAnswerCorrect = false;
bool checkAnswerPressed = false;
OutcomeText outcomeText = OutcomeText.selectAnAnswer;
int score = 0;

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  void resetGame() {
    setState(() {
      resetQuestions();
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(context: context, builder: (context) => const SettingsDialog());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Score: $score"),
            const SizedBox(
              height: 8,
            ),
            Text("${currentQuestion.question}?"),
            const SizedBox(
              height: 8,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    userAnswer = Answer.yes;
                  });
                },
                child: const Text("Yes")),
            const SizedBox(
              height: 8,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    userAnswer = Answer.no;
                  });
                },
                child: const Text("No")),
            const SizedBox(
              height: 8,
            ),
            TextButton(
                onPressed: checkAnswerPressed == false
                    ? () {
                        setState(
                          () {
                            if (userAnswer != Answer.none) {
                              checkAnswerPressed = true;
                            }
                            if (userAnswer == currentQuestion.answer) {
                              userAnswerCorrect = true;
                              score++;
                              outcomeText = OutcomeText.correct;
                            } else {
                              userAnswerCorrect = false;
                              outcomeText = OutcomeText.incorrect;
                            }
                          },
                        );
                      }
                    : null,
                child: const Text("Check Answer")),
            TextButton(
                onPressed: checkAnswerPressed == true
                    ? () {
                        setState(() {
                          checkAnswerPressed = false;
                          outcomeText = OutcomeText.selectAnAnswer;
                          currentQuestion = resetQuestion();
                          userAnswer = Answer.none;
                        });
                      }
                    : null,
                child: const Text("Next Question")),
            Text(userAnswer.name.titleCase),
            const SizedBox(
              height: 8,
            ),
            Text(outcomeText.name.titleCase),
            TextButton(
                onPressed: () {
                  showResetGameDialog(context, resetGame);
                },
                child: const Text("Reset Game"))
          ],
        ),
      ),
    );
  }
}

enum OutcomeText {
  correct,
  incorrect,
  selectAnAnswer,
}
