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
          imagePath: dinosaurImagePath,
          imageName: "parasaurolophus_icon.png",
          imagePadding: 8.0,
          fontFamily: "dinosauce",
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("${dinosaurImagePath}brachiosaurus_herd_at_watering_hole.png"), fit: BoxFit.cover)),
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
                "Dinosaur and Space Icons by Freepik, Published on flaticon.com",
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
                  "Copy Link To Dinosaur Icon Source",
                  style: TextStyle(
                    fontFamily: "Merienda",
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  FlutterClipboard.copy('https://www.flaticon.com/free-icon/galaxy_3919942?term=space&page=1&position=19&origin=style&related_id=3919942');
                },
                child: const Text(
                  "Copy Link To Galaxy Icon Source",
                  style: TextStyle(
                    fontFamily: "Merienda",
                    fontSize: 18,
                  ),
                ),
              ),
              const Text("All background images done by DALL-E"),
              const Text("Fonts: DinoSauce (dinosaur title), Induction (space Title),Erasaur (button Labels and score), Merienda(Other)")
            ],
          ),
        ),
      ),
    );
  }
}
