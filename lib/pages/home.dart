import 'package:dinosaur_quiz/pages/quiz_page.dart';
import 'package:dinosaur_quiz/pages/types_of_dinosaurs_page.dart';
import 'package:dinosaur_quiz/widgets/settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const imagePath = "assets/images/";

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dinosaur Home Page"),
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
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const QuizPage())),
              child: const Text("Dinosaur Quiz"),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TypesOfDinosaursPage())),
              child: const Text("Groups of Dinosaurs"),
            ),
          ],
        ),
      ),
    );
  }
}
