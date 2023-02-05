import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: FlexThemeData.light(scheme: FlexScheme.money),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.money),
      debugShowCheckedModeBanner: false,
      home: const HomePage(title: 'Dinosaur Quiz'),
    );
  }
}
