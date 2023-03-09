import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

import '../utils/screen_utils.dart';
import '../widgets/logo_display.dart';
import 'home.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoDisplay(
          imagePath: imagePath,
          imageName: "parasaurolophus_icon.png",
          imagePadding: 8.0,
          fontFamily: "dinosauce",
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("${imagePath}brachiosaurus_herd_at_watering_hole.png"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              boxXL,
              const Text(
                "Developed by DinoSquad",
                style: TextStyle(
                  fontFamily: "Merienda",
                  fontSize: 18,
                ),
              ),
              boxXL,
              const Text(
                "Dinosaur Icons by Freepik, Published on flaticon.com",
                style: TextStyle(
                  fontFamily: "Merienda",
                  fontSize: 18,
                ),
              ),
              boxXL,
              ElevatedButton(
                onPressed: () {
                  FlutterClipboard.copy('https://www.flaticon.com/search?author_id=1&style_id=1289&type=standard&word=dinosaur');
                },
                child: const Text(
                  "Copy Link To Icon Source",
                  style: TextStyle(
                    fontFamily: "Merienda",
                    fontSize: 18,
                  ),
                ),
              ),
              const Text("All background images done by DALL-E"),
              const Text("Fonts: DinoSauce (title), Erasaur (button Labels and score), Merienda()")
            ],
          ),
        ),
      ),
    );
  }
}
