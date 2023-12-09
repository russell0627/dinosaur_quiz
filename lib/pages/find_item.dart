import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../data/dinosaurs.dart';
import '../models/question.dart';
import '../utils/screen_utils.dart';
import 'dinosaur/dinosaur_display_page.dart';
import 'home.dart';

class FindItemPage extends StatefulWidget {
  final QuestionType itemType;

  const FindItemPage({super.key, required this.itemType});

  @override
  State<FindItemPage> createState() => _FindItemPageState();
}

class _FindItemPageState extends State<FindItemPage> {
  String nameInput = "";
  late dynamic item;
  bool itemFound = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Find An Object",
          style: TextStyle(fontFamily: "Merienda"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(findBackgroundImage(widget.itemType)),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Item Name",
                  ),
                  onChanged: (value) {
                    setState(() {
                      nameInput = value.toLowerCase();
                    });
                  },
                ),
              ),
              boxXXL,
              OutlinedButton(
                onPressed: dinosaurs[nameInput] != null
                    ? () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DinosaurDisplayPage(
                                  dinosaur: dinosaurs[nameInput]!,
                                )));
                      }
                    : null,
                child: const Text("Search for Dinosaur"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String findBackgroundImage(QuestionType questionType) {
  switch (questionType) {
    case QuestionType.dinosaur:
      return "${dinosaurImagePath}tyrannosaurus_on_peak.png";
    case QuestionType.space:
      return "";
    case QuestionType.animal:
      return "";
    case QuestionType.plant:
      return "";
  }
}
