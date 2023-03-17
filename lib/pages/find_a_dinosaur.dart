import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../data/dinosaurs.dart';
import '../models/dinosaur.dart';
import '../utils/screen_utils.dart';
import 'dinosaur_display_page.dart';
import 'home.dart';

class FindDinosaurPage extends StatefulWidget {
  const FindDinosaurPage({Key? key}) : super(key: key);

  @override
  State<FindDinosaurPage> createState() => _FindDinosaurPageState();
}

class _FindDinosaurPageState extends State<FindDinosaurPage> {
  String nameInput = "";
  late Dinosaur dinosaur;
  bool dinosaurFound = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Find A Dinosaur",
          style: TextStyle(fontFamily: "erasaur"),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("${dinosaurImagePath}tyrannosaurus_on_peak.png"),
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
                    labelText: "Dinosaur Name",
                  ),
                  onChanged: (value) {
                    setState(() {
                      nameInput = value.titleCase;
                    });
                  },
                ),
              ),
              boxXXL,
              OutlinedButton(
                onPressed: dinosaurs[nameInput] != null
                    ? () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => DinosaurDisplayPage(dinosaur: dinosaurs[nameInput]!,)));
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
