import 'package:flutter/material.dart';

import '../models/question.dart';

class LogoDisplay extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final double imagePadding;
  final String fontFamily;
  final List<String> text;

  const LogoDisplay({Key? key, required this.imagePath, required this.imageName, required this.imagePadding, required this.fontFamily, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Dinosaur", style: TextStyle(
          fontFamily: fontFamily,
        ),),
        Padding(
          padding: EdgeInsets.only(left: imagePadding, right: imagePadding),
          child: CircleAvatar(
            backgroundImage: AssetImage("$imagePath$imageName"),
          ),
        ),
        Text("Quiz", style: TextStyle(fontFamily: fontFamily))
      ],
    );
  }
}
